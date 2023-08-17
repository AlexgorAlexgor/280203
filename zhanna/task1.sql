-- Task 1 Вывести ко-во распределение клиентов по странам

SELECT country, COUNT(*) AS customer_count
FROM Customers
GROUP BY country
ORDER BY customer_count DESC

