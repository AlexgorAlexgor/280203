/* В рамках БД "песочница" вывести менеджера, который находится на третьем месте по ко-ву заказов
(проекция: фамилия_менеджера, ко-во_заказов)
 

 
 */

SELECT  EmployeeID, FirstName ,count(EmployeeID)as total_orders 
FROM [Orders] join Employees using (EmployeeID)
group by EmployeeID
order by total_orders desc
limit 1 offset 2

/* Result:
Number of Records: 1
EmployeeID	FirstName	total_orders
1	Nancy	29 */

/*Создать таблицу reactions #2
Написать запрос, который создаст таблицу reactions
 поля
id
когда_добавлено
автор
оценка (1-5)
на_какое_видео */

CREATE TABLE IF NOT EXISTS reactions (
reaction_id int primary key auto_increment,
created_at timestamp default current_timestamp,
author_id int 
value int check(value between 1 and 5)
video_id int
FOREIGN KEY (author_id) REFERENCES users(user_id) -- добавить привязку к table users
FOREIGN KEY (video_id) REFERENCES videos(video_id) -- добавить привязку к table videos

);

/* #3
Создать таблицу comments #25
Таблица, в которой будут хранится комментарии в видео */

CREATE TABLE IF NOT EXISTS comments (
comment_id int primary key auto_increment,
created_at timestamp default current_timestamp,
author_id int 
content varchar(512) not null
FOREIGN KEY (author_id) REFERENCES users(user_id) -- добавить привязку к table users
FOREIGN KEY (video_id) REFERENCES videos(video_id) -- добавить привязку к table videos

)

/* #4
Вывести перевозчиков без заказов #28
С помощью подзапросов */



/* DELETE FROM Orders
WHERE
	ShipperID=3 */
    SELECT *
FROM Shippers
WHERE ShipperId NOT IN (SELECT ShipperId FROM Orders)

/* Result:
Number of Records: 1
ShipperID	ShipperName	Phone
3	Federal Shipping	(503) 555-9931 */