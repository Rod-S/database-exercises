use adlister_db;

drop table if exists ad;
drop table if exists users;

CREATE TABLE users(
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      username VARCHAR(255) NOT NULL,
                      email VARCHAR(255) NOT NULL,
                      password VARCHAR(255) NOT NULL
);

CREATE TABLE ads(
                   id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                   title VARCHAR(255) NOT NULL,
                   description VARCHAR(255) NOT NULL,
                   user_id INT UNSIGNED,
                   FOREIGN KEY (user_id) references users (id)
);

INSERT INTO users(email, username, password) VALUES ('john_james@gmail.com','JohnnyBoy', 'password1');

DESCRIBE users;
SELECT * FROM users;

INSERT INTO ads(title, description, user_id) VALUES ('puppy for sale', 'puppy is a golden retriever', 1);
INSERT INTO ads(title, description, user_id) VALUES ('Macbook Pro', 'well taken care of', 1);
INSERT INTO ads(title, description, user_id) VALUES ('Looking for honda parts', 'as described in title', 1);
INSERT INTO ads(title, description, user_id) values ('for sale tv', 'pickup only', 1);

DESCRIBE ads;
SELECT * FROM ads;
