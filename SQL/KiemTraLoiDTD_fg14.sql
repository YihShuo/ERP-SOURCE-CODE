WITH X AS (
    SELECT DISTINCT y.*, d.KHPO, d.ARTICLE 
    FROM YWCP y
    INNER JOIN DDZL d ON d.DDBH = y.DDBH
    WHERE SB = '3' AND DDZT = 'Y'
)
SELECT DISTINCT 
    X.KHPO, 
    X.ARTICLE, 
    ISNULL(SUM(Qty), 0) AS SB3Qty,
    (
        SELECT MAX(p.fg14) 
        FROM po_daily p 
        WHERE p.khpo = X.KHPO 
          AND (p.style_no + '-' + p.color_code) = X.ARTICLE
    ) AS fg14
FROM X where X.ARTICLE not like 'BG%' and CAST(EXEDATE as date) <> CAST(GETDATE() as date)
GROUP BY X.KHPO, X.ARTICLE
ORDER BY KHPO