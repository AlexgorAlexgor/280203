CREATE TABLE reactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author VARCHAR(255),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    video_id INT,
    FOREIGN KEY (video_id) REFERENCES videos(id)
);
