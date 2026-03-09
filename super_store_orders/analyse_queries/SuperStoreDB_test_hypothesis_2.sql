SELECT 
    ship_mode,
    COUNT(*) AS order_count,
    AVG(shipping_cost) AS avg_shipping_cost,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) * 100 AS margin_percent
FROM dbo.SuperStoreOrders
GROUP BY ship_mode
ORDER BY total_profit DESC;
