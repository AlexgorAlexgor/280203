CREATE TABLE IF NOT EXISTS comments (
  comment_id integer primary key AUTOINCREMENT,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  author_id integer, FOREIGN KEY(author_id) REFERENCES users(user_id),
  video_id integer, FOREIGN KEY(video_id) REFERENCES videos(video_id),
  titel varchar(100) UNIQUE
);