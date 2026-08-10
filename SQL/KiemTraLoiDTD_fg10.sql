USE LYS_ERP;
WITH X AS (
    SELECT DISTINCT y.*, d.KHPO, d.ARTICLE 
    FROM (select * from YWCP union all select * from YWCPOld) y
    INNER JOIN DDZL d ON d.DDBH = y.DDBH
    WHERE SB in ('1','2','4') AND DDZT = 'Y'
),
ResultData AS (
    SELECT 
        X.KHPO, 
        X.ARTICLE, 
        ISNULL(SUM(Qty), 0) AS InQty,
        (
            SELECT top 1 p.fg10 
            FROM po_daily p 
            WHERE p.khpo = X.KHPO 
              AND (p.style_no + '-' + p.color_code) = X.ARTICLE
            order by UserDate desc
        ) AS fg10
    FROM X 
    WHERE X.ARTICLE NOT LIKE 'BG%'
    and CAST(INDATE as date) < CAST(GETDATE() as date)
    GROUP BY X.KHPO, X.ARTICLE
)
-- Truy vấn từ CTE thứ 2 và thực hiện so sánh
SELECT KHPO, ARTICLE, InQty, ISNULL(fg10, 0) fg10
FROM ResultData
WHERE InQty <> ISNULL(fg10, 0) and KHPO <> ''
ORDER BY KHPO;