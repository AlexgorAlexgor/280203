CREATE TABLE comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author VARCHAR(255),
    text TEXT,
    video_id INT,
    FOREIGN KEY (video_id) REFERENCES videos(id)
);
