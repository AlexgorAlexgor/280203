SELECT
	Country,
	COUNT(*) AS total_customers
FROM Customers
GROUP BY Country