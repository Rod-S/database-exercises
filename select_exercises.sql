USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS '';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# SELECT name AS 'The name of all albums by Pink Floyd'
# FROM albums
# WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band'
# FROM albums
# WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind' AS '';
SELECT genre FROM albums WHERE name = 'Nevermind';

# SELECT genre AS 'The genres for Nevermind'
# FROM albums
# WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# SELECT name AS 'Albums released in the 90''s'
# FROM albums
# WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT * FROM albums WHERE sales < 20000;

# SELECT name AS 'Albums with less than 20 million in sales'
# FROM albums
# WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS '';
SELECT * FROM albums WHERE genre = 'Rock';

# SELECT name AS 'All Rock albums'
# FROM albums
# WHERE genre = 'Rock';