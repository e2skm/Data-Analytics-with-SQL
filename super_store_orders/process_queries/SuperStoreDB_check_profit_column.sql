SELECT profit
FROM dbo.SuperStoreOrders
WHERE TRY_CONVERT(DECIMAL(18,2), profit) IS NULL
AND profit IS NOT NULL;