CREATE TABLE IF NOT EXISTS reactions (
  id int primary key auto_increment,
  created_at timestamp DEFAULT current_timestamp,
  author_id int,
  value int check(value between 1 and 5),
  video_id integer,
  FOREIGN KEY(author_id) REFERENCES users(user_id),
  FOREIGN KEY(video_id) REFERENCES users(video_id)
);