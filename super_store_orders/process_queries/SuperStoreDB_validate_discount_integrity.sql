SELECT 
    COUNT(*) AS total_rows,
    COUNT(discount) AS discount_not_null,
    COUNT(CASE WHEN discount = '0' THEN 1 END) AS zero_discounts,
    COUNT(CASE WHEN discount <> '0' THEN 1 END) AS non_zero_discounts
FROM dbo.SuperStoreOrders;