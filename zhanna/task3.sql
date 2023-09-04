-- Task 3. Написать запрос, который создаст таблицу reactions

CREATE TABLE IF NOT EXISTS reactions (
	reaction_id int primary key auto_increment,
	created_at timestamp default current_timestamp,
	author_id int,
	video_id int,
	`value` int check(value between 1 and 5), 
	FOREIGN KEY (author_id) REFERENCES users(user_id),
	FOREIGN KEY (video_id) REFERENCES videos(video_id)
);