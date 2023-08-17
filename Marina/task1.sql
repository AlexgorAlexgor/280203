-- Task1 Вывести ко-во распределение клиентов по странам
SELECT Country, COUNT(CustomerID) AS total_amount_of_customers 
FROM Customers
Group by Country