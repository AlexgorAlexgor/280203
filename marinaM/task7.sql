CREATE TABLE IF NOT EXISTS reactions (
  reaction_id integer primary key AUTOINCREMENT,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  author_id integer,
  reaction_value integer NOT NULL,
  video_id integer
);