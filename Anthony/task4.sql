CREATE TABLE IF NOT EXISTS comment (
	comment_id int primary key auto_increment,
	created_at timestamp default current_timestamp,
	comments varchar(124) not null, 
	FOREIGN KEY (author_id) REFERENCES users(user_id),
	FOREIGN KEY (video_id) REFERENCES videos(video_id)
);