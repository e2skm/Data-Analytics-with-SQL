SELECT COUNT(*) AS invalid_rows
FROM dbo.SuperStoreOrders
WHERE TRY_CONVERT(DATE, ship_date, 103) IS NULL
AND ship_date IS NOT NULL;

UPDATE dbo.SuperStoreOrders
SET ship_date =
    CONVERT(VARCHAR(10),
        TRY_CONVERT(DATE, ship_date, 103),
        23
    );