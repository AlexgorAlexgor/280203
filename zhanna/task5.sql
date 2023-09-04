-- Task 5. Вывести перевозчиков без заказов

SELECT *
FROM Shippers
WHERE
		NOT ShipperID IN
    (SELECT ShipperID FROM Orders)