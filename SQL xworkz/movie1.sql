CREATE DATABASE movie1;
USE movie1;
CREATE TABLE movie1_review(movie_name varchar(20),movie_rating int,movie_price int);
ALTER TABLE movie1_review ADD COLUMN movie_cast varchar(10);
USE movie1;    
DESC movie1_review;
