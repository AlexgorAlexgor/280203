-- Task4. Создать таблицу comments

CREATE TABLE IF NOT EXISTS comments (
	comment_id int primary key auto_increment,
	created_at timestamp default current_timestamp,
	author_id int,
	video_id int,
	content varchar(512) not null,
	FOREIGN KEY (author_id) REFERENCES users(user_id),
	FOREIGN KEY (video_id) REFERENCES videos(video_id)
);