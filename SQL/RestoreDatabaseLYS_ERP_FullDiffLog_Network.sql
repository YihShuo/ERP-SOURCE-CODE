USE [master];
GO

-- ============================================================================
-- BƯỚC 1: BẬT XP_CMDSHELL VÀ ĐĂNG NHẬP VÀO Ổ ĐĨA MẠNG
-- ============================================================================
EXEC sp_configure 'show advanced options', 1; RECONFIGURE;
EXEC sp_configure 'xp_cmdshell', 1; RECONFIGURE;
GO

EXEC xp_cmdshell 'net use \\192.168.71.7\SQL_Backup "IT@Admin17" /user:"erp" /persistent:yes';
GO

-- ============================================================================
-- BƯỚC 2: KHAI BÁO BIẾN VÀ TÌM FILE FULL, DIFF, LOG
-- ============================================================================
DECLARE @FullFolder  NVARCHAR(500) = N'\\192.168.71.7\SQL_Backup\LYS_ERP\Full\';
DECLARE @DiffFolder  NVARCHAR(500) = N'\\192.168.71.7\SQL_Backup\LYS_ERP\Diff\';
DECLARE @LogFolder   NVARCHAR(500) = N'\\192.168.71.7\SQL_Backup\LYS_ERP\Log\'; -- Đường dẫn chứa file .trn

DECLARE @LatestFullFile NVARCHAR(500);
DECLARE @LatestDiffFile NVARCHAR(500);
DECLARE @TodayPrefix    NVARCHAR(20);

-- Lấy tiền tố ngày hiện tại (Định dạng: YYYY-MM-DD)
SET @TodayPrefix = 'LYS_ERP_LOG_' + CONVERT(VARCHAR(10), GETDATE(), 120); 

-- Bảng tạm chứa danh sách tất cả file
IF OBJECT_ID('tempdb..#FileList') IS NOT NULL DROP TABLE #FileList;
CREATE TABLE #FileList (FileName NVARCHAR(255), Depth INT, IsFile INT);

-- 1. Tìm file FULL mới nhất
INSERT INTO #FileList EXEC master.dbo.xp_dirtree @FullFolder, 1, 1;
SELECT TOP 1 @LatestFullFile = @FullFolder + FileName
FROM #FileList WHERE IsFile = 1 AND FileName LIKE '%.bak'
ORDER BY FileName DESC;
DELETE FROM #FileList;

-- 2. Tìm file DIFF mới nhất
INSERT INTO #FileList EXEC master.dbo.xp_dirtree @DiffFolder, 1, 1;
SELECT TOP 1 @LatestDiffFile = @DiffFolder + FileName
FROM #FileList WHERE IsFile = 1 AND FileName LIKE '%.bak'
ORDER BY FileName DESC;
DELETE FROM #FileList;

-- 3. Lấy danh sách các file LOG của ngày hiện tại
IF OBJECT_ID('tempdb..#LogFiles') IS NOT NULL DROP TABLE #LogFiles;
CREATE TABLE #LogFiles (ID INT IDENTITY(1,1), FileName NVARCHAR(255));

INSERT INTO #FileList EXEC master.dbo.xp_dirtree @LogFolder, 1, 1;

INSERT INTO #LogFiles (FileName)
SELECT FileName 
FROM #FileList 
WHERE IsFile = 1 
  AND FileName LIKE @TodayPrefix + '%.trn'
ORDER BY FileName ASC; -- Bắt buộc phải RESTORE LOG theo đúng thứ tự thời gian tăng dần

DROP TABLE #FileList;

-- ============================================================================
-- BƯỚC 3: TIẾN HÀNH RESTORE TỰ ĐỘNG (FULL -> DIFF -> LOGS -> RECOVERY)
-- ============================================================================
IF @LatestFullFile IS NOT NULL AND @LatestDiffFile IS NOT NULL
BEGIN
    PRINT N'-> Tìm thấy File FULL: ' + @LatestFullFile;
    PRINT N'-> Tìm thấy File DIFF: ' + @LatestDiffFile;

    -- A. Ngắt kết nối Database hiện tại
    ALTER DATABASE LYS_ERP SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    -- B. Restore FULL (WITH NORECOVERY)
    DECLARE @Sql NVARCHAR(MAX);
    SET @Sql = 'RESTORE DATABASE LYS_ERP FROM DISK = ''' + @LatestFullFile + ''' WITH '
             + 'MOVE ''LIY_ERP_Data'' TO ''C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LYS_ERP.mdf'', '
             + 'MOVE ''LIY_ERP_Log'' TO ''C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LYS_ERP.ldf'', '
             + 'REPLACE, NORECOVERY, STATS = 10;';
    EXEC sp_executesql @Sql;

    -- C. Restore DIFF (WITH NORECOVERY)
    SET @Sql = 'RESTORE DATABASE LYS_ERP FROM DISK = ''' + @LatestDiffFile + ''' WITH NORECOVERY, STATS = 10;';
    EXEC sp_executesql @Sql;

    -- D. Restore lần lượt từng File Log của ngày hiện tại
    DECLARE @CurrentID INT = 1;
    DECLARE @MaxID INT = (SELECT COUNT(*) FROM #LogFiles);
    DECLARE @LogFileName NVARCHAR(255);

    IF @MaxID > 0
    BEGIN
        PRINT N'-> Phát hiện ' + CAST(@MaxID AS NVARCHAR(10)) + N' file LOG cần Restore...';
        
        WHILE @CurrentID <= @MaxID
        BEGIN
            SELECT @LogFileName = FileName FROM #LogFiles WHERE ID = @CurrentID;
            
            PRINT N'   [+] Restoring Log (' + CAST(@CurrentID AS NVARCHAR(10)) + N'/' + CAST(@MaxID AS NVARCHAR(10)) + N'): ' + @LogFileName;
            
            SET @Sql = 'RESTORE LOG LYS_ERP FROM DISK = ''' + @LogFolder + @LogFileName + ''' WITH NORECOVERY, STATS = 10;';
            EXEC sp_executesql @Sql;

            SET @CurrentID = @CurrentID + 1;
        END
    END
    ELSE
    BEGIN
        PRINT N'-> Không tìm thấy file LOG nào của ngày hôm nay (' + @TodayPrefix + N'*.trn).';
    END

    -- E. Mở Database hoàn tất (RECOVERY)
    PRINT N'-> Đang đưa Database về trạng thái RECOVERY (sẵn sàng sử dụng)...';
    RESTORE DATABASE LYS_ERP WITH RECOVERY;

    -- F. Cho phép truy cập lại bình thường
    ALTER DATABASE LYS_ERP SET MULTI_USER;
    PRINT N'=== HOÀN TẤT RESTORE DATABASE LYS_ERP (FULL + DIFF + LOGS) ===';

    DROP TABLE #LogFiles;
END
ELSE
BEGIN
    IF @LatestFullFile IS NULL PRINT N'LỖI: Không tìm thấy file FULL!';
    IF @LatestDiffFile IS NULL PRINT N'LỖI: Không tìm thấy file DIFF!';
END
GO