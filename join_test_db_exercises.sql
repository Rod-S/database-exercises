USE join_test_db;

# INSERT INTO users (name, email, role_id) VALUES
# ('johnson', 'johnson@gmail.com', 2),
# ('gabriel', 'gabriel@gmail.com', 2),
# ('linda', 'linda@gmail.com', 2),
# ('adam', 'adam@gmail.com', null)

SELECT CONCAT(users.name, ' ', users.email), roles.name
FROM users
right join roles
on users.role_id = roles.id;

SELECT roles.name, COUNT(users.name)
FROM users
join roles
on users.role_id = roles.id
GROUP BY roles.name;