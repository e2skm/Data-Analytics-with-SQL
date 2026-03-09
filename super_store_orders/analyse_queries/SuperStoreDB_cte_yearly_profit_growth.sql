WITH YearlySales AS (
	SELECT 
		YEAR(order_date) AS order_year,
		SUM(profit) AS total_profit
	FROM dbo.SuperStoreOrders
	GROUP BY YEAR(order_date))
SELECT 
	order_year,
	total_profit,
	LAG(total_profit) OVER(ORDER BY order_year) AS previous_year_profit,
	(total_profit - LAG(total_profit) OVER(ORDER BY order_year)) 
		/ LAG(total_profit) OVER(ORDER BY order_year) * 100 AS growth_percentage
FROM YearlySales;