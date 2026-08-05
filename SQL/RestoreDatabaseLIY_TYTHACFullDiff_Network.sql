USE [master];
GO

--Kiểm tra LogicalName của database
--RESTORE FILELISTONLY 
--FROM DISK = 'D:\LIY_TYTHAC\Full\LIY_TYTHAC_FULL_2026-07-19 01-02-02.bak';

-- ============================================================================
-- BƯỚC 1: BẬT XP_CMDSHELL VÀ ĐĂNG NHẬP VÀO Ổ ĐĨA MẠNG
-- ============================================================================
EXEC sp_configure 'show advanced options', 1; RECONFIGURE;
EXEC sp_configure 'xp_cmdshell', 1; RECONFIGURE;
GO

-- Thay "MatKhauThucTe" và "UserThucTe" của máy 192.168.71.7 vào đây:
EXEC xp_cmdshell 'net use \\192.168.71.7\SQL_Backup "IT@Admin17" /user:"erp" /persistent:yes';
GO

-- ============================================================================
-- BƯỚC 2: KHAI BÁO BIẾN VÀ TÌM FILE BACKUP MỚI NHẤT
-- ============================================================================
DECLARE @FullFolder NVARCHAR(500) = '\\192.168.71.7\SQL_Backup\LIY_TYTHAC\Full\';
DECLARE @DiffFolder NVARCHAR(500) = '\\192.168.71.7\SQL_Backup\LIY_TYTHAC\Diff\';

DECLARE @LatestFullFile NVARCHAR(500);
DECLARE @LatestDiffFile NVARCHAR(500);

IF OBJECT_ID('tempdb..#FileList') IS NOT NULL DROP TABLE #FileList;
CREATE TABLE #FileList (FileName NVARCHAR(255), Depth INT, IsFile INT);

-- Tìm file FULL mới nhất
INSERT INTO #FileList EXEC master.dbo.xp_dirtree @FullFolder, 1, 1;
SELECT TOP 1 @LatestFullFile = @FullFolder + FileName
FROM #FileList WHERE IsFile = 1 AND FileName LIKE '%.bak'
ORDER BY FileName DESC;

DELETE FROM #FileList;

-- Tìm file DIFF mới nhất
INSERT INTO #FileList EXEC master.dbo.xp_dirtree @DiffFolder, 1, 1;
SELECT TOP 1 @LatestDiffFile = @DiffFolder + FileName
FROM #FileList WHERE IsFile = 1 AND FileName LIKE '%.bak'
ORDER BY FileName DESC;

DROP TABLE #FileList;

-- ============================================================================
-- BƯỚC 3: TIẾN HÀNH RESTORE TỰ ĐỘNG
-- ============================================================================
IF @LatestFullFile IS NOT NULL AND @LatestDiffFile IS NOT NULL
BEGIN
    PRINT N'-> Tìm thấy File FULL mới nhất: ' + @LatestFullFile;
    PRINT N'-> Tìm thấy File DIFF mới nhất: ' + @LatestDiffFile;

    -- A. Ngắt kết nối Database hiện tại
    ALTER DATABASE LIY_TYTHAC SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    -- B. Restore FULL
    DECLARE @SqlRestoreFull NVARCHAR(MAX);
    SET @SqlRestoreFull = '
    RESTORE DATABASE LIY_TYTHAC
    FROM DISK = ''' + @LatestFullFile + '''
    WITH 
        MOVE ''LIY_TYTHAC'' TO ''C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LIY_TYTHAC.mdf'',
        MOVE ''LIY_TYTHAC_Log''  TO ''C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LIY_TYTHAC.ldf'',
        REPLACE,
        NORECOVERY,
        STATS = 10;';

    EXEC sp_executesql @SqlRestoreFull;

    -- C. Restore DIFF và Mở Database (RECOVERY)
    DECLARE @SqlRestoreDiff NVARCHAR(MAX);
    SET @SqlRestoreDiff = '
    RESTORE DATABASE LIY_TYTHAC
    FROM DISK = ''' + @LatestDiffFile + '''
    WITH 
        RECOVERY,
        STATS = 10;';

    EXEC sp_executesql @SqlRestoreDiff;

    -- D. Cho phép truy cập lại bình thường
    ALTER DATABASE LIY_TYTHAC SET MULTI_USER;
    PRINT N'=== HOÀN TẤT RESTORE DATABASE LIY_TYTHAC ===';
END
ELSE
BEGIN
    IF @LatestFullFile IS NULL PRINT N'LỖI: Không tìm thấy file FULL trong thư mục mạng!';
    IF @LatestDiffFile IS NULL PRINT N'LỖI: Không tìm thấy file DIFF trong thư mục mạng!';
END
GO