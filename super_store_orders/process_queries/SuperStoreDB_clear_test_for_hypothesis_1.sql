SELECT 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.10 THEN 'Low (0–10%)'
        WHEN discount <= 0.30 THEN 'Medium (10–30%)'
        ELSE 'High (>30%)'
    END AS discount_group,
    COUNT(*) AS order_count,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) * 100 AS margin_percent
FROM dbo.SuperStoreOrders
GROUP BY 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.10 THEN 'Low (0–10%)'
        WHEN discount <= 0.30 THEN 'Medium (10–30%)'
        ELSE 'High (>30%)'
    END
ORDER BY margin_percent DESC;  