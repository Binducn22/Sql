CREATE DATABASE TASK2;
USE TASK2;
CREATE TABLE orders (
  id INT,
  order_name VARCHAR(50),
  cost BIGINT,
  order_id INT PRIMARY KEY,
  created_at TIMESTAMP,
  created_by VARCHAR(50),
  modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  modified_by VARCHAR(50)
);
INSERT INTO orders (id, order_name, cost, order_id, created_at, created_by, modified_at, modified_by)
VALUES
(1, 'Diwali Sale', 100, 1, '2022-01-01 12:00:00', 'Rahul Jain', '2022-01-24 12:00:00', 'Amit Singh'),
(2, 'Winter Clearance', 200, 2, '2024-01-02 13:00:00', 'Priya Sharma', '2024-02-11 13:00:00', 'Vikram Mehta'),
(3, 'Gift Card Purchase', 50, 3, '2022-02-13 14:00:00', 'Kunal Kapoor', '2022-01-03 14:00:00', 'Rohini Gupta'),
(4, 'Black Friday Deal', 150, 4, '2022-01-04 15:00:00', 'Sonal Desai', '2022-01-04 15:00:00', 'Manish Patel'),
(5, 'Holiday Bundle', 250, 5, '2022-01-05 16:00:00', 'Arjun Singh', '2022-01-05 16:00:00', 'Nalini Iyer'),
(6, 'Cyber Monday Sale', 300, 6, '2022-01-06 17:00:00', 'Rhea Khanna', '2022-01-06 17:00:00', 'Sandeep Gupta'),
(7, 'Last Minute Gift', 75, 7, '2022-01-07 18:00:00', 'Tanmay Rao', '2022-01-07 18:00:00', 'Disha Mehta'),
(8, 'New Arrival Purchase', 120, 8, '2022-01-08 19:00:00', 'Neha Sharma', '2022-01-08 19:00:00', 'Ravi Jain'),
(9, 'Birthday Gift Set', 180, 9, '2022-01-09 20:00:00', 'Aryan Khan', '2022-01-09 20:00:00', 'Sonia Singh'),
(10, 'Anniversary Package', 220, 10, '2022-01-10 21:00:00', 'Mahesh Patel', '2022-01-10 21:00:00', 'Preeti Gupta');
DESC orders;
SELECT*FROM orders;

CREATE TABLE payment(id int,price bigint,payment_id int primary key,order_id int,payment_status varchar(50),
created_at timestamp,created_by varchar(50),modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, modified_by varchar(50),
foreign key(order_id) references orders(order_id));
INSERT INTO payment (id, order_id, payment_id,price, created_by, created_at, modified_by, modified_at, payment_status)
VALUES
(1, 1,  1, 100, 'Rahul Jain', '2022-01-01 12:00:00', 'Rajiv Sharma', '2022-01-01 12:05:00', 'Successful'),
(2, 2,  2, 200, 'Priya Gupta', '2022-01-02 13:00:00', 'Vineet Mehta', '2022-01-02 13:10:00', 'Pending'),
(3, 3,  3, 50, 'Kunal Singh', '2022-01-03 14:00:00', 'Rohini Patel', '2022-01-03 14:15:00', 'Failed'),
(4, 4,4, 150, 'Sonal Desai', '2022-01-04 15:00:00', 'Manish Jain', '2022-01-04 15:20:00', 'Successful'),
(5, 5,  5, 250, 'Arjun Kumar', '2022-01-05 16:00:00', 'Nalini Sharma', '2022-01-05 16:25:00', 'Pending'),
(6, 6,  6, 300, 'Rhea Khanna', '2022-01-06 17:00:00', 'Sandeep Gupta', '2022-01-06 17:30:00', 'Successful'),
(7, 7,  7, 75, 'Tanmay Rao', '2022-01-07 18:00:00', 'Disha Mehta', '2022-01-07 18:40:00', 'Failed'),
(8, 8,  8, 120, 'Neha Sharma', '2022-01-08 19:00:00', 'Ravi Patel', '2022-01-08 19:50:00', 'Pending'),
(9, 9,  9, 180, 'Aryan Khan', '2022-01-09 20:00:00', 'Sonia Singh', '2022-01-09 20:55:00', 'Successful'),
(10, 10,  10, 220, 'Mahesh Patel', '2022-01-10 21:00:00', 'Preeti Gupta', '2022-01-10 21:58:00', 'Pending');
DESC payment;
SELECT*FROM payment;

CREATE TABLE restaurant(id int,restaurant_name varchar(50),restaurant_id int primary key,location varchar(50),order_id int,
ratings int,payment_id int,created_at timestamp,created_by varchar(50),modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,modified_by varchar(50),
foreign key(order_id) references orders(order_id),foreign key(payment_id) references payment(payment_id));
INSERT INTO restaurant (id, restaurant_name, restaurant_id, location, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by)
VALUES
  (1, 'Tasty Bites', 1, 'New York', 1, 4, 1, '2022-01-01 12:00:00', 'John', '2022-01-01 12:00:00', 'Janvi'),
  (2, 'Spice Hub', 2, 'Los Angeles', 2, 5, 2, '2022-01-02 13:00:00', 'Jenny', '2022-01-02 13:00:00', 'Jane'),
  (3, 'The Grill', 3, 'Chicago', 3, 4, 3, '2022-01-03 14:00:00', 'Babu', '2022-01-03 14:00:00', 'Bob'),
  (4, 'Burger Barn', 4, 'Houston', 4, 3, 4, '2022-01-04 15:00:00', 'Aliya', '2022-01-04 15:00:00', 'Alice'),
  (5, 'Sushi Palace', 5, 'Phoenix', 5, 5, 5, '2022-01-05 16:00:00', 'Mikal', '2022-01-05 16:00:00', 'Mithila'),
  (6, 'Taco Bell', 6, 'Philadelphia', 6, 4, 6, '2022-01-06 17:00:00', 'esha', '2022-01-06 17:00:00', 'Emma'),
  (7, 'Pizza Hut', 7, 'San Antonio', 7, 4, 7, '2022-01-07 18:00:00', 'David', '2022-01-07 18:00:00', 'Drisya'),
  (8, 'KFC', 8, 'San Diego', 8, 3, 8, '2022-01-08 19:00:00', 'Sophia', '2022-01-08 19:00:00', 'Sogar'),
  (9, 'Subway', 9, 'Dallas', 9, 4, 9, '2022-01-09 20:00:00', 'Oliver', '2022-01-09 20:00:00', 'Omkar'),
  (10, 'McDonalds', 10, 'San Jose', 10, 4, 10, '2022-01-10 21:00:00', 'Ava', '2022-01-10 21:00:00', 'raj');
DESC restaurant;
SELECT*FROM restaurant;

CREATE TABLE delivery(id int,person_name varchar(50),mode_of_payment enum('card','online','offline'),restaurant_id int ,order_id int ,
created_at timestamp,created_by varchar(50),modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,modified_by varchar(50),
foreign key(restaurant_id) references restaurant(restaurant_id),foreign key(order_id) references orders(order_id));
INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by)
VALUES
  (1, 'John Doe', 'online', 1, 1, '2022-01-01 12:00:00', 'joseph', '2022-01-01 12:00:00', 'John'),
  (2, 'Jane Smith', 'online', 2, 2, '2022-01-02 13:00:00', 'fatima', '2022-01-02 13:00:00', 'Jesy'),
  (3, 'Bob Johnson', 'offline', 3, 3, '2022-01-03 14:00:00', 'madan', '2022-01-03 14:00:00', 'Bharati'),
  (4, 'Alice Brown', 'online', 4, 4, '2022-01-04 15:00:00', 'Arti', '2022-01-04 15:00:00', 'Alice'),
  (5, 'Mike Davis', 'online', 5, 5, '2022-01-05 16:00:00', 'spoorti', '2022-01-05 16:00:00', 'Mike'),
  (6, 'Emma Taylor', 'offline', 6, 6, '2022-01-06 17:00:00', 'giri', '2022-01-06 17:00:00', 'Emma'),
  (7, 'David White', 'offline', 7, 7, '2022-01-07 18:00:00', 'thilak', '2022-01-07 18:00:00', 'Darshan'),
  (8, 'Sophia Martin', 'online', 8, 8, '2022-01-08 19:00:00', 'pooja', '2022-01-08 19:00:00', 'Sana'),
  (9, 'Oliver Lee', 'offline', 9, 9, '2022-01-09 20:00:00', 'tejas', '2022-01-09 20:00:00', 'ojas'),
  (10, 'Ava Hall', 'online', 10, 10, '2022-01-10 21:00:00', 'Avanti', '2022-01-10 21:00:00', 'Avani');
DESC delivery;
SELECT*FROM delivery;