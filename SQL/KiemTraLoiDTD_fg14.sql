USE LYS_ERP;
WITH X AS (
    SELECT DISTINCT y.*, d.KHPO, d.ARTICLE 
    FROM (select * from YWCP union all select * from YWCPOld) y
    INNER JOIN DDZL d ON d.DDBH = y.DDBH
    WHERE SB = '3' AND DDZT = 'Y'
),
ResultData AS (
    SELECT 
        X.KHPO, 
        X.ARTICLE, 
        ISNULL(SUM(Qty), 0) AS SB3Qty,
        (
            SELECT MAX(p.fg14)
            FROM po_daily p 
            WHERE p.khpo = X.KHPO 
              AND (p.style_no + '-' + p.color_code) = X.ARTICLE
        ) AS fg14, MAX(CAST(EXEDATE as date)) as EXEDATE
    FROM X 
    WHERE X.ARTICLE NOT LIKE 'BG%' 
      AND CAST(EXEDATE AS DATE) <> CAST(GETDATE() AS DATE)
    GROUP BY X.KHPO, X.ARTICLE
)
-- Truy vấn từ CTE thứ 2 và thực hiện so sánh
SELECT * 
FROM ResultData
WHERE SB3Qty <> ISNULL(fg14, 0) and KHPO <> '' and EXEDATE >= '2026-01-01'
ORDER BY EXEDATE desc;
