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