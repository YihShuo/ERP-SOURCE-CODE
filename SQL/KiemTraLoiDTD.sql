DECLARE @date DATE = CAST(GETDATE() AS DATE);
        DECLARE @start DATETIME = DATEADD(HOUR, -2, CAST(@date AS DATETIME)); 
        DECLARE @end   DATETIME = DATEADD(HOUR, 22, CAST(@date AS DATETIME));

        WITH ListKHPO AS (
            -- Ngu?n 1: B?ng YWCP v?i ngay xu?t ho?c ngay nh?p hom nay
            SELECT DISTINCT DDZL.KHPO
            FROM YWCP 
            INNER JOIN DDZL
                ON DDZL.DDBH = YWCP.DDBH
            WHERE (
                YWCP.EXEDATE >= @start AND YWCP.EXEDATE < @end OR 
                YWCP.INDATE   >= @start AND YWCP.INDATE   < @end OR 
                YWCP.REDATE   >= @start AND YWCP.REDATE   < @end
            )
            AND DDZL.KHPO > ''

            
            UNION
            
            -- Ngu?n 2: B?ng SMDDSS v?i ngay quet hom nay
            SELECT DISTINCT KHPO
            FROM SMDD 
                INNER JOIN SMDDSS on SMDDSS.DDBH = SMDD.DDBH and SMDD.GXLB = SMDDSS.GXLB
                INNER JOIN DDZL ON DDZL.DDBH = SMDD.YSBH
            WHERE CONVERT(DATE, ScanEDate) = CONVERT(DATE, @date)
            
            UNION
            
            -- Ngu?n 3: B?ng KCRK + KCRKS v?i ngay xac nh?n nh?p kho hom nay
            SELECT  distinct DDZL.KHPO
            FROM KCRK
            LEFT JOIN KCRKS ON KCRK.RKNO = KCRKS.RKNO
            INNER JOIN DDZL ON DDZL.DDBH = KCRKS.CGBH
            WHERE CONVERT(DATE, CFMDATE) = CONVERT(DATE, @date)
            AND KCRK.GSBH = 'HBA'
            AND (KCRKS.CGBH LIKE 'F%' OR KCRKS.CGBH LIKE 'HK%' OR KCRKS.CGBH LIKE 'HFS%' OR KCRKS.CGBH LIKE 'JHS%' OR KCRKS.CGBH LIKE 'JTS%')
        ),
        
FG AS (
    SELECT
        'FE12' AS Factory_Code,
        'FT-YS' AS Factory_Name,
        CASE 
            WHEN Y.DDBH LIKE 'JHS%' OR Y.DDBH LIKE 'JTS%' THEN 'PO'
            WHEN Y.DDBH LIKE 'F%' THEN 'Preload'
            WHEN Y.DDBH LIKE 'HK%' OR Y.DDBH LIKE 'HFS%' THEN 'Seeding'
            ELSE 'PO'
        END AS poType, 
        D.KHPO,

        CASE 
            WHEN CHARINDEX('-', D.ARTICLE) > 0
                THEN SUBSTRING(D.ARTICLE, 1, CHARINDEX('-', D.ARTICLE) - 1)
            ELSE D.ARTICLE
        END AS style_number,

        CASE 
            WHEN CHARINDEX('-', D.ARTICLE) > 0
                THEN SUBSTRING(D.ARTICLE, CHARINDEX('-', D.ARTICLE) + 1, LEN(D.ARTICLE))
            ELSE NULL
        END AS color_code,

        CASE 
            WHEN CHARINDEX(' ', L.zwsm) <= 1 THEN ' '
            ELSE SUBSTRING(L.zwsm, 1, CHARINDEX(' ', L.zwsm) - 1)
        END AS ship_id,

        Y.DDBH,
        D.Dest,
        D.Pairs,

        SUM(CASE WHEN Y.SB IN ('1','2','4','3') THEN Y.Qty ELSE 0 END) AS FG10_Qty,
        SUM(CASE WHEN Y.SB = '3' THEN Y.Qty ELSE 0 END) AS FG14_Qty

    FROM YWCP AS Y
    LEFT JOIN DDZL AS D ON D.DDBH = Y.DDBH
    LEFT JOIN lbzls AS L ON L.lbdh = D.Dest AND L.lb = '13'
    WHERE
        Y.SB IN ('1','2','3','4')  
        AND D.DDZT = 'Y'
        AND D.GSBH = 'VDH'
    GROUP BY
    Y.DDBH, D.KHPO, D.Pairs, D.Dest, D.ARTICLE, L.zwsm
),

-- FG KEY
FG_KEY AS (
    SELECT DISTINCT
        KHPO,
        style_number,
        color_code,
        ship_id
    FROM FG
    WHERE FG10_Qty <> FG14_Qty
),

-- DTD（先取最新）
DTD AS (
    SELECT *
    FROM (
        SELECT *,
            ROW_NUMBER() OVER (
                PARTITION BY khpo, style_no, color_code, ship_id
                ORDER BY report_date DESC
            ) AS rn
        FROM po_daily
    ) t
    WHERE rn = 1
),

-- DTD_KEY
DTD_KEY AS (
    SELECT DISTINCT
        khpo,
        style_no AS style_number,
        color_code,
        ship_id
    FROM DTD
    WHERE fg10 <> fg14
),

-- 縮小資料範圍
ALL_KEYS AS (
    SELECT KHPO, style_number, color_code, ship_id FROM FG_KEY
    UNION
    SELECT KHPO, style_number, color_code, ship_id FROM DTD_KEY
)

-- 最終查詢
SELECT
    FG.factory_code,
    FG.factory_name,
    FG.poType AS po_type,
    K.KHPO,

    K.style_number,
    K.color_code,
    K.ship_id,

    ISNULL(DTD.fg10, 0) AS dtd_tracking_fg10,
        ISNULL(SUM(FG.FG10_Qty), 0) AS factory_warehouse_fg10,


        ISNULL(DTD.fg14, 0) AS dtd_tracking_fg14,
        ISNULL(SUM(FG.FG14_Qty), 0) AS factory_warehouse_fg14,

    -- 差異量
    ISNULL(SUM(FG.FG10_Qty),0) - ISNULL(DTD.fg10,0) AS diff_fg10,
    ISNULL(SUM(FG.FG14_Qty),0) - ISNULL(DTD.fg14,0) AS diff_fg14,

    -- 是否異常
    CASE 
        WHEN ISNULL(SUM(FG.FG10_Qty),0) <> ISNULL(DTD.fg10,0)
          OR ISNULL(SUM(FG.FG14_Qty),0) <> ISNULL(DTD.fg14,0)
        THEN 0
        ELSE 1
    END AS is_match,
    DTD.return_id

FROM ALL_KEYS K

LEFT JOIN FG 
    ON FG.KHPO = K.KHPO
   AND FG.style_number = K.style_number
   AND FG.color_code = K.color_code
   AND (
        FG.ship_id = K.ship_id
        OR FG.ship_id IS NULL
        OR FG.ship_id = ' '
        OR K.ship_id IS NULL
        OR K.ship_id = ' '
   )

LEFT JOIN DTD
    ON DTD.KHPO = K.KHPO
   AND DTD.style_no = K.style_number
   AND DTD.color_code = K.color_code
   AND (
        DTD.ship_id = K.ship_id
        OR DTD.ship_id IS NULL
        OR K.ship_id IS NULL
   )
    WHERE NOT EXISTS (
            SELECT 1 
            FROM ListKHPO L
            WHERE L.KHPO = K.KHPO
    )
GROUP BY
    FG.factory_code,
    FG.factory_name,
    FG.poType,
    K.KHPO,
    K.style_number,
    K.color_code,
    K.ship_id,
    DTD.fg10,
    DTD.fg14,
    DTD.return_id

HAVING 
    (
        ISNULL(SUM(FG.FG10_Qty),0) <> ISNULL(DTD.fg10,0)
        OR 
        ISNULL(SUM(FG.FG14_Qty),0) <> ISNULL(DTD.fg14,0)
    )
    AND NOT EXISTS (
        SELECT 1 
        FROM ListKHPO L
        WHERE L.KHPO = K.KHPO
    )

ORDER BY 
    K.diff_fg10,
    K.KHPO,
    K.style_number, 
    K.color_code, 
    K.ship_id ;
--1. Nếu factory_code là NULL và số lượng factory_warehouse_fg10 bằng 0:
--Vui lòng sử dụng Postman để hủy đơn đặt hàng (PO).
--2. Nếu dtdtracking_fg10 bằng 0 và factory_warehouse_fg10 có số lượng:
--Vui lòng cập nhật (update) dữ liệu theo ngày hôm nay.