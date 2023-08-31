SELECT
    e.EmployeeID,
    e.LastName AS LastNameEmployee,
    COUNT(o.OrderID) AS QuantityOrders
FROM
    Employees e
JOIN
    Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY
    e.EmployeeID, e.LastName
ORDER BY
    QuantityOrders DESC
LIMIT 1 OFFSET 2;
