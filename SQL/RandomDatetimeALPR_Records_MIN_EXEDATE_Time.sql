USE LYS_ERP;
WITH RawData AS (
    SELECT DISTINCT
        I.INV_NO,
        Y.BIEN_SO,
        Y.CON_NO,
        Y.EXEDATE
    FROM INVOICE_D I
    INNER JOIN (
        SELECT
            DDBH,
            CON_NO,
            REPLACE(BIEN_SO, '-', '') AS BIEN_SO,
            EXEDATE
        FROM (
            SELECT * FROM YWCP
            UNION ALL
            SELECT * FROM YWCPOld
        ) YWCP
        WHERE EXEDATE >= '2026-01-01'
    ) Y
        ON Y.DDBH = I.RYNO
),
MinDate AS (
    SELECT
        BIEN_SO,
        CON_NO,
        CASE 
            WHEN CON_NO IN ('TRUCK', 'XETAI')
            THEN CAST(EXEDATE AS DATE)
            ELSE NULL
        END AS GROUP_DATE,
        CAST(MIN(EXEDATE) AS DATE) AS EXEDATE_FULL
    FROM RawData
    GROUP BY
        BIEN_SO,
        CON_NO,
        CASE 
            WHEN CON_NO IN ('TRUCK', 'XETAI')
            THEN CAST(EXEDATE AS DATE)
            ELSE NULL
        END
),
MaxTimeInMinDate AS (
    SELECT
        R.BIEN_SO,
        R.CON_NO,
        M.EXEDATE_FULL,
        MAX(R.EXEDATE) AS EXEDATE_GOC
    FROM RawData R
    INNER JOIN MinDate M
        ON R.BIEN_SO = M.BIEN_SO
        AND R.CON_NO = M.CON_NO
        AND CAST(R.EXEDATE AS DATE) = M.EXEDATE_FULL
    GROUP BY
        R.BIEN_SO,
        R.CON_NO,
        M.EXEDATE_FULL
),
StuffedData AS (
    SELECT
        A.BIEN_SO,
        A.CON_NO,
        A.EXEDATE_FULL,
        A.EXEDATE_GOC,
        STUFF((
            SELECT ';' + X.INV_NO
            FROM (
                SELECT DISTINCT
                    B.INV_NO
                FROM RawData B
                WHERE B.BIEN_SO = A.BIEN_SO
                    AND B.CON_NO = A.CON_NO
                    AND CAST(B.EXEDATE AS DATE) = A.EXEDATE_FULL
            ) X
            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'), 1, 1, '') AS STUFFED_INV_NO
    FROM MaxTimeInMinDate A
),
RandomizedData AS (
    SELECT
        YWCP.BIEN_SO,
        YWCP.CON_NO,
        YWCP.EXEDATE_FULL,
        YWCP.EXEDATE_GOC,
        YWCP.STUFFED_INV_NO,
        CASE
            WHEN DATEADD(
                    MINUTE,
                    -R.RandomMinsIn,
                    YWCP.EXEDATE_GOC
                 ) < CAST(YWCP.EXEDATE_FULL AS DATETIME)
            THEN DATEADD(
                    MINUTE,
                    R.FallbackMinsIn,
                    CAST(YWCP.EXEDATE_FULL AS DATETIME)
                 )
            ELSE DATEADD(
                    MINUTE,
                    -R.RandomMinsIn,
                    YWCP.EXEDATE_GOC
                 )
        END AS InTime,
        CASE
            WHEN DATEADD(
                    MINUTE,
                    R.RandomMinsOut,
                    YWCP.EXEDATE_GOC
                 ) >= DATEADD(
                    DAY,
                    1,
                    CAST(YWCP.EXEDATE_FULL AS DATETIME)
                 )
            THEN DATEADD(
                    MINUTE,
                    R.FallbackMinsOut,
                    DATEADD(
                        HOUR,
                        23,
                        CAST(YWCP.EXEDATE_FULL AS DATETIME)
                    )
                 )
            ELSE DATEADD(
                    MINUTE,
                    R.RandomMinsOut,
                    YWCP.EXEDATE_GOC
                 )
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
        ON YWCP.BIEN_SO COLLATE DATABASE_DEFAULT
            = A.Plate_Id COLLATE DATABASE_DEFAULT
        AND YWCP.CON_NO COLLATE DATABASE_DEFAULT
            = A.CON_NO COLLATE DATABASE_DEFAULT
        AND YWCP.EXEDATE_FULL
            = CAST(A.outtime AS DATE)
        AND A.Exfty_Date >= '2026-01-01'
        AND A.Type = 1
        AND A.outtime IS NOT NULL
    WHERE A.ID IS NULL
)
SELECT
    InTime,
    OutTime,
    BIEN_SO AS Plate1,
    BIEN_SO AS Plate2,
    BIEN_SO AS Plate3,
    STUFFED_INV_NO AS PackingList_Barcode,
    CONVERT(varchar(10), GETDATE(), 120) AS Invoice_no,
    CON_NO,
    REPLACE(
        CONVERT(VARCHAR(10), EXEDATE_FULL, 120),
        '-',
        '\'
    ) AS zDate,
    BIEN_SO
        + '_'
        + REPLACE(
            RIGHT(
                CONVERT(VARCHAR(50), OutTime, 120),
                8
            ),
            ':',
            ''
        ) AS zTime,
    '' AS Note,
    NULL AS UserUpdate,
    '1' AS Type
FROM RandomizedData
WHERE CAST(InTime AS DATE) < CAST(GETDATE() AS DATE)
ORDER BY EXEDATE_GOC DESC;