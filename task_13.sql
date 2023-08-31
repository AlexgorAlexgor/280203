SELECT FirstName, LastName, COUNT(*) as total_orders
FROM Employees
JOIN Orders USING(EmployeeID)
GROUP BY EmployeeID
ORDER BY total_orders DESC
LIMIT 1 OFFSET 2 
