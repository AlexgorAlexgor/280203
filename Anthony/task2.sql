SELECT
	LastName,FirstName,COUNT(*) AS total_orders
FROM Employees 
left  JOIN Orders USING(EmployeeID)
GROUP BY Orders.EmployeeID
ORDER BY total_orders DESC
LIMIT  2,1