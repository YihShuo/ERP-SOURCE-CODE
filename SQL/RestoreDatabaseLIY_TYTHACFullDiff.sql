USE [master];
GO
--Kiểm tra LogicalName của database
--RESTORE FILELISTONLY 
--FROM DISK = 'D:\LIY_TYTHAC\Full\LIY_TYTHAC_FULL_2026-07-19 01-02-02.bak';

-- 1. Ngắt tất cả kết nối hiện tại
ALTER DATABASE LIY_TYTHAC SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- 2. Restore bản FULL (Dùng tên logical file chuẩn trong file .bak)
RESTORE DATABASE LIY_TYTHAC
FROM DISK = 'D:\LIY_TYTHAC\Full\LIY_TYTHAC_FULL_2026-07-19 01-02-02.bak'
WITH -- MOVE <LogicalName> TO <Đường dẫn tới file database thực>
    MOVE 'LIY_TYTHAC' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LIY_TYTHAC.mdf',
    MOVE 'LIY_TYTHAC_Log'  TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\LIY_TYTHAC.ldf',
    REPLACE,
    NORECOVERY,
    STATS = 10;
GO

-- 3. Restore bản DIFF và mở Database ra sử dụng luôn (RECOVERY)
RESTORE DATABASE LIY_TYTHAC
FROM DISK = 'D:\LIY_TYTHAC\Diff\LIY_TYTHAC_DIFF_2026-07-24 03-00-26.bak'
WITH 
    RECOVERY,
    STATS = 10;
GO

-- 4. Cho phép truy cập lại bình thường
ALTER DATABASE LIY_TYTHAC SET MULTI_USER;
GO