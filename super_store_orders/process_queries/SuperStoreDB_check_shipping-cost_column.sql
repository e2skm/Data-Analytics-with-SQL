SELECT shipping_cost
FROM dbo.SuperStoreOrders
WHERE TRY_CONVERT(DECIMAL(18,2), shipping_cost) IS NULL
AND shipping_cost IS NOT NULL;