WITH RawData AS (
    SELECT 
        I.INV_NO, 
        Y.BIEN_SO, 
        Y.CON_NO, 
        MIN(Y.EXEDATE) AS EXEDATE 
    FROM INVOICE_D I
    INNER JOIN (
        SELECT 
            DDBH, 
            CON_NO, 
            REPLACE(BIEN_SO, '-', '') BIEN_SO, 
            EXEDATE
        FROM YWCP 
        WHERE EXEDATE >= '2026-01-01'
    ) Y ON Y.DDBH = I.RYNO
    GROUP BY I.INV_NO, Y.BIEN_SO, Y.CON_NO
),
StuffedData AS (
    SELECT
        A.BIEN_SO, 
        A.CON_NO, 
        CAST(MIN(A.EXEDATE) AS DATE) AS EXEDATE_FULL,
        MIN(A.EXEDATE) AS EXEDATE, 
        STUFF((
            SELECT ';' + B.INV_NO
            FROM RawData B
            WHERE B.BIEN_SO = A.BIEN_SO
              AND B.CON_NO = A.CON_NO
            FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '') AS STUFFED_INV_NO
    FROM RawData A
    GROUP BY A.BIEN_SO, A.CON_NO
),
RandomizedData AS (
    SELECT 
        YWCP.BIEN_SO,
        YWCP.CON_NO,
        YWCP.EXEDATE_FULL,
        YWCP.EXEDATE AS EXEDATE_GOC,
        YWCP.STUFFED_INV_NO,
        
        CASE 
            WHEN DATEADD(MINUTE, -R.RandomMinsIn, YWCP.EXEDATE) < CAST(YWCP.EXEDATE_FULL AS DATETIME)
            THEN DATEADD(MINUTE, R.FallbackMinsIn, CAST(YWCP.EXEDATE_FULL AS DATETIME))
            ELSE DATEADD(MINUTE, -R.RandomMinsIn, YWCP.EXEDATE)
        END AS InTime,
        
        CASE 
            WHEN DATEADD(MINUTE, R.RandomMinsOut, YWCP.EXEDATE) >= DATEADD(DAY, 1, CAST(YWCP.EXEDATE_FULL AS DATETIME))
            THEN DATEADD(MINUTE, R.FallbackMinsOut, DATEADD(HOUR, 23, CAST(YWCP.EXEDATE_FULL AS DATETIME)))
            ELSE DATEADD(MINUTE, R.RandomMinsOut, YWCP.EXEDATE)
        END AS OutTime

    FROM StuffedData YWCP
    CROSS APPLY (
        SELECT 
            (ABS(CHECKSUM(NEWID())) % 121) + 60 AS RandomMinsIn,
            (ABS(CHECKSUM(NEWID())) % 121) + 60 AS RandomMinsOut, 
            ABS(CHECKSUM(NEWID())) % 60 AS FallbackMinsIn,         
            ABS(CHECKSUM(NEWID())) % 60 AS FallbackMinsOut        
    ) R
    LEFT JOIN ALPR_DB..ALPR_Records A 
        ON YWCP.BIEN_SO COLLATE DATABASE_DEFAULT = A.Plate_Id COLLATE DATABASE_DEFAULT 
        AND YWCP.CON_NO COLLATE DATABASE_DEFAULT = A.CON_NO COLLATE DATABASE_DEFAULT
        AND CAST(YWCP.EXEDATE as date) = CAST(A.outtime as date)
        AND A.Exfty_Date >= '2026-01-01' 
        AND A.Type = 1 
        AND A.outtime IS NOT NULL
    WHERE A.ID IS NULL 
)

SELECT
    InTime,
    OutTime,
    BIEN_SO Plate1,
    BIEN_SO Plate2,
    BIEN_SO Plate3,
    STUFFED_INV_NO as PackingList_Barcode,
    '1' as Invoice_no,
    CON_NO,
    REPLACE(EXEDATE_FULL,'-','\') as zDate,
    BIEN_SO +'_'+ REPLACE(RIGHT(CONVERT(VARCHAR(50),OutTime,120), 8),':','') as zTime,
    '' as Note,
    null as UserUpdate,
    '1' as Type
FROM RandomizedData
WHERE CAST(InTime as date) < CAST(GETDATE() as date)
ORDER BY EXEDATE_GOC DESC;