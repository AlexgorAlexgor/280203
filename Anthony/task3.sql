CREATE TABLE IF NOT EXISTS reactions (
	reactions_id int primary key auto_increment,
    created_at timestamp default current_timestamp,
	aftor varchar(64) not null,
    grade int check (quantity <6),
	on_what_video varchar(64) not null
);