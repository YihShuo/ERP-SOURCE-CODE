WITH RawData AS (
    SELECT 
        I.INV_NO, 
        Y.BIEN_SO, 
        Y.CON_NO, 
        Y.EXEDATE_DATE,
        MAX(Y.EXEDATE) AS EXEDATE -- Chỉ lấy làm gốc tính Random, không làm rã nhóm STUFF
    FROM INVOICE_D I
    INNER JOIN (
        SELECT 
            DDBH, 
            CON_NO, 
            REPLACE(BIEN_SO, '-', '') BIEN_SO, 
            EXEDATE,                             -- Giờ gốc
            CAST(EXEDATE AS DATE) EXEDATE_DATE   -- Ngày dùng để STUFF
        FROM YWCP 
        WHERE EXEDATE >= '2026-01-01'
    ) Y ON Y.DDBH = I.RYNO
    GROUP BY I.INV_NO, Y.BIEN_SO, Y.CON_NO, Y.EXEDATE_DATE
),
StuffedData AS (
    SELECT
        A.BIEN_SO, 
        A.CON_NO, 
        A.EXEDATE_DATE,
        MAX(A.EXEDATE) AS EXEDATE, -- Đưa mốc giờ gốc ra ngoài cùng để tính toán
        STUFF((
            SELECT ';' + B.INV_NO
            FROM RawData B
            WHERE B.BIEN_SO = A.BIEN_SO
              AND B.CON_NO = A.CON_NO
              AND B.EXEDATE_DATE = A.EXEDATE_DATE -- Liên kết hoàn toàn bằng Ngày tinh giản
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '') AS STUFFED_INV_NO
    FROM RawData A
    GROUP BY A.BIEN_SO, A.CON_NO, A.EXEDATE_DATE
),
RandomizedData AS (
    SELECT 
        YWCP.BIEN_SO,
        YWCP.CON_NO,
        YWCP.EXEDATE_DATE,
        YWCP.EXEDATE AS EXEDATE_GOC,
        YWCP.STUFFED_INV_NO,
        
        -- 1. XỬ LÝ INTIME: Trừ phút từ giờ gốc, nếu lùi sang ngày hôm trước -> Ép về 00:XX của ngày đó
        CASE 
            WHEN DATEADD(MINUTE, -R.RandomMinsIn, YWCP.EXEDATE) < CAST(YWCP.EXEDATE_DATE AS DATETIME)
            THEN DATEADD(MINUTE, R.FallbackMinsIn, CAST(YWCP.EXEDATE_DATE AS DATETIME))
            ELSE DATEADD(MINUTE, -R.RandomMinsIn, YWCP.EXEDATE)
        END AS InTime,
        
        -- 2. XỬ LÝ OUTTIME: Cộng phút từ giờ gốc, nếu lố sang ngày hôm sau -> Ép về 23:XX của ngày đó
        CASE 
            WHEN DATEADD(MINUTE, R.RandomMinsOut, YWCP.EXEDATE) >= DATEADD(DAY, 1, CAST(YWCP.EXEDATE_DATE AS DATETIME))
            THEN DATEADD(MINUTE, R.FallbackMinsOut, DATEADD(HOUR, 23, CAST(YWCP.EXEDATE_DATE AS DATETIME)))
            ELSE DATEADD(MINUTE, R.RandomMinsOut, YWCP.EXEDATE)
        END AS OutTime

    FROM StuffedData YWCP
    CROSS APPLY (
        SELECT 
            (ABS(CHECKSUM(NEWID())) % 121) + 60 AS RandomMinsIn,  -- Ngẫu nhiên từ 60 - 180 phút
            (ABS(CHECKSUM(NEWID())) % 121) + 60 AS RandomMinsOut, -- Ngẫu nhiên từ 60 - 180 phút
            ABS(CHECKSUM(NEWID())) % 60 AS FallbackMinsIn,         -- Ngẫu nhiên từ 0 - 59 phút (giữ ở mức 00:XX)
            ABS(CHECKSUM(NEWID())) % 60 AS FallbackMinsOut         -- Ngẫu nhiên từ 0 - 59 phút (giữ ở mức 23:XX)
    ) R
    LEFT JOIN ALPR_DB..ALPR_Records A 
        ON YWCP.BIEN_SO COLLATE DATABASE_DEFAULT = A.Plate_Id COLLATE DATABASE_DEFAULT 
        AND YWCP.CON_NO COLLATE DATABASE_DEFAULT = A.CON_NO COLLATE DATABASE_DEFAULT
        AND A.Exfty_Date >= '2026-01-01' 
        AND A.Type = 1 
        AND A.outtime IS NOT NULL
    WHERE A.ID IS NULL 
)

-- >>> TỪ ĐÂY BẠN CÓ THỂ VIẾT TIẾP CODE ĐỂ XỬ LÝ DỮ LIỆU CỦA CTE "RandomizedData" <<<
SELECT 
    InTime,
    OutTime,
    BIEN_SO Plate1,
    BIEN_SO Plate2,
    BIEN_SO Plate3,
    STUFFED_INV_NO as Packing_list,
    '' as Inovice_no,
    CON_NO,
    REPLACE(EXEDATE_DATE,'-','\') as zDate,
    BIEN_SO +'_'+ REPLACE(RIGHT(CONVERT(VARCHAR(50),OutTime,120), 8),':','') as zTime,
    '' as Note,
    null as UserUpdate,
    '1' as Type
FROM RandomizedData
ORDER BY EXEDATE_GOC DESC;