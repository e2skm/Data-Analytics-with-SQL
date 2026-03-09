SELECT sales
FROM dbo.SuperStoreOrders
WHERE TRY_CONVERT(DECIMAL(18,2), sales) IS NULL
AND sales IS NOT NULL;

UPDATE dbo.SuperStoreOrders
SET sales = REPLACE(sales, ',', '');