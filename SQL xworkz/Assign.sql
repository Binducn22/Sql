CREATE DATABASE assign
USE assign
CREATE TABLE movie_info (
    title VARCHAR(255),
    genre VARCHAR(100),
    director VARCHAR(255),
    release_year INT,
    rating BIGINT,
    is_awarded BOOLEAN,
    duration INT,
    budget BIGINT,
    producer VARCHAR(255),
    awards VARCHAR(100)
);
ALTER TABLE movie_info
ADD COLUMN language VARCHAR(50),
ADD COLUMN country VARCHAR(50),
ADD COLUMN release_date DATE,
ADD COLUMN box_office_bigint BIGINT,
ADD COLUMN sequel BOOLEAN;
ALTER TABLE movie_info CHANGE COLUMN release_year release_year_int INT;
ALTER TABLE movie_info CHANGE COLUMN producer production_company VARCHAR(255);
ALTER TABLE movie_info CHANGE COLUMN duration duration_minutes INT;
ALTER TABLE movie_info CHANGE COLUMN rating imdb_rating FLOAT;
ALTER TABLE movie_info CHANGE COLUMN is_awarded won_awards TINYINT(1);
INSERT INTO movie_info (title, genre, director, release_date, imdb_rating, won_awards, duration_minutes, budget, production_company, awards, language, country, box_office_bigint, sequel)
VALUES
('The Shawshank Redemption', 'Drama', 'Frank Darabont', '1994-09-10', 9.3, true, 142, 25000000, 'Castle Rock Entertainment', '7 nominations', 'English', 'USA', 28341469, false),
('The Godfather', 'Crime, Drama', 'Francis Ford Coppola', '1972-03-24', 9.2, true, 175, 6000000, 'Paramount Pictures', '3 Oscars, 5 other wins', 'English', 'USA', 245066411, false),
('The Dark Knight', 'Action, Crime, Drama', 'Christopher Nolan', '2008-07-18', 9.0, true, 152, 185000000, 'Warner Bros.', '2 Oscars, 157 other wins', 'English', 'USA', 1004558444, true),
('Pulp Fiction', 'Crime, Drama', 'Quentin Tarantino', '1994-10-14', 8.9, false, 154, 8000000, 'Miramax Films', '1 Oscar, 69 other wins', 'English', 'USA', 213928762, false),
('Inception', 'Action, Adventure, Sci-Fi', 'Christopher Nolan', '2010-07-16', 8.8, true, 148, 160000000, 'Warner Bros.', '4 Oscars, 152 other wins', 'English', 'USA', 836836967, false),
('Forrest Gump', 'Drama, Romance', 'Robert Zemeckis', '1994-07-06', 8.8, true, 142, 55000000, 'Paramount Pictures', '6 Oscars, 45 other wins', 'English', 'USA', 67822645, false),
('The Matrix', 'Action, Sci-Fi', 'Lana Wachowski', '1999-03-31', 8.7, false, 136, 63000000, 'Warner Bros.', '4 Oscars, 33 other wins', 'English', 'USA', 46541699, true),
('The Lord of the Rings: The Fellowship of the Ring', 'Action, Adventure, Drama', 'Peter Jackson', '2001-12-19', 8.8, true, 178, 93000000, 'New Line Cinema', '4 Oscars, 113 other wins', 'English', 'USA', 887933462, true),
('The Lion King', 'Animation, Adventure, Drama', 'Roger Allers', '1994-06-24', 8.5, true, 88, 45000000, 'Walt Disney Pictures', '2 Oscars, 33 other wins', 'English', 'USA', 968483777, false),
('Fight Club', 'Drama', 'David Fincher', '1999-10-15', 8.8, false, 139, 63000000, '20th Century Fox', '8 wins, 12 nominations', 'English', 'USA', 100853753, false);


UPDATE movie_info
SET duration_minutes = 150
WHERE title = 'The Shawshank Redemption';

UPDATE movie_info
SET imdb_rating = 9.1,
    won_awards = true
WHERE title = 'Pulp Fiction';

UPDATE movie_info
SET duration_minutes = 180
WHERE title = 'The Lord of the Rings: The Fellowship of the Ring';

UPDATE movie_info
SET imdb_rating = 8.9,
    awards = '6 Oscars, 45 other wins'
WHERE title = 'Forrest Gump';

UPDATE movie_info
SET duration_minutes = 160,
    genre = 'Action, Sci-Fi'
WHERE title = 'Inception';

UPDATE movie_info
SET budget = 70000000,
    producer = 'Paramount Pictures'
WHERE title = 'The Godfather';

UPDATE movie_info
SET duration_minutes = 165,
    awards = '4 Oscars, 33 other wins'
WHERE title = 'The Matrix';

UPDATE movie_info
SET genre = 'Animation, Adventure, Drama',
    awards = '2 Oscars, 33 other wins'
WHERE title = 'The Lion King';

UPDATE movie_info
SET imdb_rating = 8.6,
    duration_minutes = 145
WHERE title = 'Fight Club';

DELETE FROM movie_info
WHERE title = 'The Matrix';

DELETE FROM movie_info
WHERE director = 'Robert Zemeckis';

DELETE FROM movie_info
WHERE title = 'Fight Club';

SELECT *
FROM movie_info
WHERE genre = 'Drama'


SELECT *
FROM movie_info
WHERE director IN ('Christopher Nolan', 'Quentin Tarantino');

SELECT *
FROM movie_info
WHERE director NOT IN ('Christopher Nolan', 'Quentin Tarantino');
SELECT *
FROM movie_info;