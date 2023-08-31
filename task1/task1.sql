--Вывести ко-во распределение клиентов по странам
SELECT Country, count(Country) as total_customers
FROM Customers
group by country
order by total_customers desc
/* Country	total_customers
USA	13
Germany	11
France	11
Brazil	9
UK	7
Spain	5
Mexico	5
Venezuela	4
Italy	3
Canada	3
Argentina	3
Switzerland	2
Sweden	2
Portugal	2
Finland	2
Denmark	2
Belgium	2
Austria	2
Poland	1
Norway	1
Ireland	1 */

/* **Задача. Вывести данные о клиенте, который находится на втором месте по ко-ву заказов**

(проекция: `имя_клиента`, `ко_во_заказов`) */
SELECT  CustomerID, CustomerName, count(CustomerID) as total_orders
FROM Customers join  orders using (CustomerID)
group by CustomerID
--having CustomerID is 87
order by total_orders desc
limit 3 offset 1
/* Result:
Number of Records: 1
CustomerID	CustomerName	total_orders
87	Wartian Herkku	7
65	Rattlesnake Canyon Grocery	7
63	QUICK-Stop	7 */

/* **Лимитирование вывода / Оператор `LIMIT`**

- позволяет ограничить вывод строк
- `LIMIT` вывести только указанное ко-во строк
- `OFFSET` смещение на указанное ко-во строк
limit = 5 */

limit = 5
page = 1
offset = limit * (page - 1)
offset = limit * page - limit

