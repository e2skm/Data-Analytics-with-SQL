SELECT COUNT(*) AS invalid_rows
FROM dbo.SuperStoreOrders
WHERE TRY_CONVERT(DATE, order_date, 103) IS NULL
AND order_date IS NOT NULL;


UPDATE dbo.SuperStoreOrders
SET order_date =
    CONVERT(VARCHAR(10),
        TRY_CONVERT(DATE, order_date, 103),
        23
    );