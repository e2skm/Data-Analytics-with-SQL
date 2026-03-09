SELECT 
    COUNT(*) AS total_orders,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(profit) / SUM(sales) * 100 AS profit_margin_percent,
    AVG(discount) AS average_discount,
    SUM(shipping_cost) AS total_shipping_cost
FROM dbo.SuperStoreOrders;
