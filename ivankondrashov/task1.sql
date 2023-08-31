SELECT Employees.LastName, COUNT(Orders.OrderID) AS OrderCount
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY OrderCount DESC
LIMIT 1 OFFSET 2;