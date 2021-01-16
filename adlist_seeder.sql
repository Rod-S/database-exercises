use adlist;

# # For a given ad, what is the email address of the user that created it?

INSERT INTO users (email, pass) VALUES
('john', '123');

SELECT * FROM users;

INSERT INTO category(name) VALUES
('electronics');
INSERT INTO category(name) VALUES
('kitchen');
INSERT INTO category(name) VALUES
('hardware');
INSERT INTO category(name) VALUES
('clothing');

SELECT * FROM category;

INSERT INTO ad (user_id, title, description, category) VALUES
('ad1', 'my ad''s description', 1);

SELECT * FROM ad;