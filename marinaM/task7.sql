CREATE TABLE IF NOT EXISTS reactions (
  reaction_id integer primary key AUTOINCREMENT,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  author_id integer, FOREIGN KEY(author_id) REFERENCES users(user_id),
  reaction_value integer CHECK (value BETWEEN 1 and 5),
  video_id integer, FOREIGN KEY(video_id) REFERENCES videos(video_id)
);