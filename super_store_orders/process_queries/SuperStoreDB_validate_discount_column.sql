SELECT 
    COUNT(*) AS total_rows,
    COUNT(discount) AS discount_not_null,
    SUM(CASE WHEN discount <> 0 THEN 1 ELSE 0 END) AS non_zero_discounts
FROM dbo.SuperStoreOrders;