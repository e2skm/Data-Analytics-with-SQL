SELECT 
	discount,
	AVG(profit) AS average_profit,
	COUNT(*) AS order_count
FROM dbo.SuperStoreOrders
GROUP BY discount
ORDER BY discount;