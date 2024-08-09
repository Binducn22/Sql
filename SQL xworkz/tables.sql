CREATE DATABASE tables;
USE tables;

CREATE TABLE temple_info (
  id INT,
  name VARCHAR(255),
  location VARCHAR(255),
  phone BIGINT,
  email VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  pincode BIGINT,
  deity_name VARCHAR(255)
);


ALTER TABLE temple_info
MODIFY id INT NOT NULL,
MODIFY name VARCHAR(255) NOT NULL,
ADD CONSTRAINT temple_info_name_unique UNIQUE (name),
ADD CONSTRAINT temple_info_phone_unique UNIQUE (phone),
ADD CONSTRAINT temple_info_phone_check CHECK (phone > 0),
ADD CONSTRAINT temple_info_pincode_check CHECK (pincode > 0);

INSERT INTO temple_info (id, name, location, phone, email, address, city, state, pincode, deity_name) VALUES
(1, 'Shiva Temple', 'North Side', 1234567890, 'shiva@temple.com', '1 Shiva Lane', 'Metropolis', 'MetroState', 123456, 'Shiva'),
(2, 'Durga Temple', 'East Side', 2345678901, 'durga@temple.com', '2 Durga Ave', 'MetroCity', 'MetroState', 234567, 'Durga'),
(3, 'Vishnu Temple', 'South Side', 3456789012, 'vishnu@temple.com', '3 Vishnu Blvd', 'Metroville', 'MetroState', 345678, 'Vishnu'),
(4, 'Lakshmi Temple', 'West Side', 4567890123, 'lakshmi@temple.com', '4 Lakshmi Rd', 'MetroTown', 'MetroState', 456789, 'Lakshmi'),
(5, 'Ganesh Temple', 'Central Area', 5678901234, 'ganesh@temple.com', '5 Ganesh St', 'Metroburg', 'MetroState', 567890, 'Ganesh'),
(6, 'Hanuman Temple', 'North East', 6789012345, 'hanuman@temple.com', '6 Hanuman Dr', 'MetroCity', 'MetroState', 678901, 'Hanuman'),
(7, 'Krishna Temple', 'South West', 7890123456, 'krishna@temple.com', '7 Krishna Ct', 'Metropolis', 'MetroState', 789012, 'Krishna'),
(8, 'Saraswati Temple', 'South East', 8901234567, 'saraswati@temple.com', '8 Saraswati Ln', 'Metroville', 'MetroState', 890123, 'Saraswati'),
(9, 'Rama Temple', 'North West', 9012345678, 'rama@temple.com', '9 Rama Rd', 'MetroTown', 'MetroState', 901234, 'Rama'),
(10, 'Ganga Temple', 'Central North', 1234567891, 'ganga@temple.com', '10 Ganga Ave', 'Metroburg', 'MetroState', 123457, 'Ganga'),
(11, 'Yamuna Temple', 'Central South', 2345678902, 'yamuna@temple.com', '11 Yamuna St', 'MetroCity', 'MetroState', 234568, 'Yamuna'),
(12, 'Kali Temple', 'West End', 3456789013, 'kali@temple.com', '12 Kali Blvd', 'Metropolis', 'MetroState', 345679, 'Kali'),
(13, 'Parvati Temple', 'East End', 4567890124, 'parvati@temple.com', '13 Parvati Rd', 'Metroville', 'MetroState', 456780, 'Parvati'),
(14, 'Surya Temple', 'North West', 5678901235, 'surya@temple.com', '14 Surya Ln', 'MetroTown', 'MetroState', 567891, 'Surya'),
(15, 'Chandra Temple', 'South East', 6789012346, 'chandra@temple.com', '15 Chandra St', 'Metroburg', 'MetroState', 678902, 'Chandra'),
(16, 'Ganesha Temple', 'Central West', 7890123457, 'ganesha@temple.com', '16 Ganesha Ct', 'Metropolis', 'MetroState', 789013, 'Ganesha'),
(17, 'Rudra Temple', 'North East', 8901234568, 'rudra@temple.com', '17 Rudra Dr', 'MetroCity', 'MetroState', 890124, 'Rudra'),
(18, 'Venkateswara Temple', 'South West', 9012345679, 'venkateswara@temple.com', '18 Venkateswara Rd', 'Metroville', 'MetroState', 901235, 'Venkateswara'),
(19, 'Brahma Temple', 'West End', 1234567800, 'brahma@temple.com', '19 Brahma Blvd', 'MetroTown', 'MetroState', 123456, 'Brahma'),
(20, 'Indra Temple', 'East North', 2345678903, 'indra@temple.com', '20 Indra Ave', 'Metroburg', 'MetroState', 234567, 'Indra');


ALTER TABLE temple_info
MODIFY email VARCHAR(255) NOT NULL;

ALTER TABLE temple_info
ADD CONSTRAINT temple_info_address_unique UNIQUE (address);


ALTER TABLE temple_info ADD CONSTRAINT temple_info_pincode_check CHECK (pincode > 0);

ALTER TABLE temple_info ADD CONSTRAINT temple_info_phone_check CHECK (phone > 0);

SELECT * FROM temple_info;

CREATE TABLE market_info (
  id INT,
  name VARCHAR(255),
  location VARCHAR(255),
  phone BIGINT,
  email VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  pincode BIGINT,
  market_type VARCHAR(255)
);

ALTER TABLE market_info
MODIFY id INT NOT NULL,
MODIFY name VARCHAR(255) NOT NULL,
ADD CONSTRAINT market_info_name_unique UNIQUE (name),
ADD CONSTRAINT market_info_phone_unique UNIQUE (phone),
ADD CONSTRAINT market_info_phone_check CHECK (phone > 0),
ADD CONSTRAINT market_info_pincode_check CHECK (pincode > 0);

INSERT INTO market_info (id, name, location, phone, email, address, city, state, pincode, market_type) VALUES
(1, 'Downtown Market', 'Downtown', 1234567890, 'downtown@market.com', '101 Market St', 'Metropolis', 'MetroState', 123456, 'Retail'),
(2, 'Northside Market', 'North End', 2345678901, 'northside@market.com', '202 North Ave', 'MetroCity', 'MetroState', 234567, 'Wholesale'),
(3, 'Southside Market', 'South Side', 3456789012, 'southside@market.com', '303 South Blvd', 'Metroville', 'MetroState', 345678, 'Retail'),
(4, 'Eastside Market', 'East End', 4567890123, 'eastside@market.com', '404 East Rd', 'MetroTown', 'MetroState', 456789, 'Wholesale'),
(5, 'Westside Market', 'West Side', 5678901234, 'westside@market.com', '505 West Ln', 'Metroburg', 'MetroState', 567890, 'Retail'),
(6, 'Central Market', 'Central Park', 6789012345, 'central@market.com', '606 Central Ave', 'MetroCity', 'MetroState', 678901, 'Wholesale'),
(7, 'Union Market', 'Union Square', 7890123456, 'union@market.com', '707 Union St', 'Metropolis', 'MetroState', 789012, 'Retail'),
(8, 'Main Market', 'Main Street', 8901234567, 'main@market.com', '808 Main St', 'MetroCity', 'MetroState', 890123, 'Wholesale'),
(9, 'Oak Market', 'Oakwood', 9012345678, 'oak@market.com', '909 Oak Dr', 'Metroville', 'MetroState', 901234, 'Retail'),
(10, 'Pine Market', 'Pine Hill', 1234567891, 'pine@market.com', '1010 Pine Rd', 'MetroTown', 'MetroState', 123457, 'Wholesale'),
(11, 'Maple Market', 'Maple Grove', 2345678902, 'maple@market.com', '1111 Maple St', 'Metroburg', 'MetroState', 234568, 'Retail'),
(12, 'Cedar Market', 'Cedar Lane', 3456789013, 'cedar@market.com', '1212 Cedar Ave', 'Metropolis', 'MetroState', 345679, 'Wholesale'),
(13, 'Birch Market', 'Birchwood', 4567890124, 'birch@market.com', '1313 Birch Blvd', 'MetroCity', 'MetroState', 456780, 'Retail'),
(14, 'Elm Market', 'Elm Street', 5678901235, 'elm@market.com', '1414 Elm St', 'Metroville', 'MetroState', 567891, 'Wholesale'),
(15, 'Willow Market', 'Willow Creek', 6789012346, 'willow@market.com', '1515 Willow Dr', 'MetroTown', 'MetroState', 678902, 'Retail'),
(16, 'Aspen Market', 'Aspen Heights', 7890123457, 'aspen@market.com', '1616 Aspen Rd', 'Metroburg', 'MetroState', 789013, 'Wholesale'),
(17, 'Sycamore Market', 'Sycamore Park', 8901234568, 'sycamore@market.com', '1717 Sycamore Ln', 'Metropolis', 'MetroState', 890124, 'Retail'),
(18, 'Hickory Market', 'Hickory Hill', 9012345679, 'hickory@market.com', '1818 Hickory St', 'MetroCity', 'MetroState', 901235, 'Wholesale'),
(19, 'Cherry Market', 'Cherry Blossom', 1234567800, 'cherry@market.com', '1919 Cherry Ave', 'Metroville', 'MetroState', 123456, 'Retail'),
(20, 'Walnut Market', 'Walnut Grove', 2345678903, 'walnut@market.com', '2020 Walnut Rd', 'MetroTown', 'MetroState', 234567, 'Wholesale');

ALTER TABLE market_info
MODIFY email VARCHAR(255) NOT NULL;

ALTER TABLE market_info
ADD CONSTRAINT market_info_address_unique UNIQUE (address);


ALTER TABLE market_info ADD CONSTRAINT market_info_pincode_check CHECK (pincode > 0);

ALTER TABLE market_info ADD CONSTRAINT market_info_phone_check CHECK (phone > 0);

SELECT * FROM market_info;

CREATE TABLE metro_info (
  id INT,
  name VARCHAR(255),
  location VARCHAR(255),
  phone BIGINT,
  email VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  pincode BIGINT,
  line_number BIGINT
);

ALTER TABLE metro_info
MODIFY id INT NOT NULL,
MODIFY name VARCHAR(255) NOT NULL,
ADD CONSTRAINT metro_info_name_unique UNIQUE (name),
ADD CONSTRAINT metro_info_phone_unique UNIQUE (phone),
ADD CONSTRAINT metro_info_phone_check CHECK (phone > 0),
ADD CONSTRAINT metro_info_line_number_check CHECK (line_number > 0);
 

INSERT INTO metro_info (id, name, location, phone, email, address, city, state, pincode, line_number) VALUES
(1, 'Central Station', 'Downtown', 1234567890, 'central@metro.com', '123 Main St', 'Metropolis', 'MetroState', 123456, 1),
(2, 'North Station', 'North End', 2345678901, 'north@metro.com', '456 North Ave', 'MetroCity', 'MetroState', 234567, 2),
(3, 'South Station', 'South Side', 3456789012, 'south@metro.com', '789 South Blvd', 'Metroville', 'MetroState', 345678, 3),
(4, 'East Station', 'East End', 4567890123, 'east@metro.com', '101 East Rd', 'MetroTown', 'MetroState', 456789, 4),
(5, 'West Station', 'West Side', 5678901234, 'west@metro.com', '202 West Ln', 'Metroburg', 'MetroState', 567890, 5),
(6, 'Central Park Station', 'Central Park', 6789012345, 'centralpark@metro.com', '303 Park Ave', 'MetroCity', 'MetroState', 678901, 6),
(7, 'Union Station', 'Union Square', 7890123456, 'union@metro.com', '404 Union St', 'Metropolis', 'MetroState', 789012, 7),
(8, 'Main Station', 'Main Street', 8901234567, 'main@metro.com', '505 Main St', 'MetroCity', 'MetroState', 890123, 8),
(9, 'Oak Station', 'Oakwood', 9012345678, 'oak@metro.com', '606 Oak Dr', 'Metroville', 'MetroState', 901234, 9),
(10, 'Pine Station', 'Pine Hill', 1234567891, 'pine@metro.com', '707 Pine Rd', 'MetroTown', 'MetroState', 123457, 10),
(11, 'Maple Station', 'Maple Grove', 2345678902, 'maple@metro.com', '808 Maple St', 'Metroburg', 'MetroState', 234568, 11),
(12, 'Cedar Station', 'Cedar Lane', 3456789013, 'cedar@metro.com', '909 Cedar Ave', 'Metropolis', 'MetroState', 345679, 12),
(13, 'Birch Station', 'Birchwood', 4567890124, 'birch@metro.com', '1010 Birch Blvd', 'MetroCity', 'MetroState', 456780, 13),
(14, 'Elm Station', 'Elm Street', 5678901235, 'elm@metro.com', '1111 Elm St', 'Metroville', 'MetroState', 567891, 14),
(15, 'Willow Station', 'Willow Creek', 6789012346, 'willow@metro.com', '1212 Willow Dr', 'MetroTown', 'MetroState', 678902, 15),
(16, 'Aspen Station', 'Aspen Heights', 7890123457, 'aspen@metro.com', '1313 Aspen Rd', 'Metroburg', 'MetroState', 789013, 16),
(17, 'Sycamore Station', 'Sycamore Park', 8901234568, 'sycamore@metro.com', '1414 Sycamore Ln', 'Metropolis', 'MetroState', 890124, 17),
(18, 'Hickory Station', 'Hickory Hill', 9012345679, 'hickory@metro.com', '1515 Hickory St', 'MetroCity', 'MetroState', 901235, 18),
(19, 'Cherry Station', 'Cherry Blossom', 1234567800, 'cherry@metro.com', '1616 Cherry Ave', 'Metroville', 'MetroState', 123456, 19),
(20, 'Walnut Station', 'Walnut Grove', 2345678903, 'walnut@metro.com', '1717 Walnut Rd', 'MetroTown', 'MetroState', 234567, 20);


ALTER TABLE metro_info
MODIFY email VARCHAR(255) NOT NULL;

ALTER TABLE metro_info
ADD CONSTRAINT metro_info_address_unique UNIQUE (address);

ALTER TABLE metro_info ADD CONSTRAINT metro_info_pincode_check CHECK (pincode BETWEEN 100000 AND 999999);

ALTER TABLE metro_info ADD CONSTRAINT metro_info_line_number_check CHECK (line_number > 0);

SELECT * FROM metro_info;

show table status;


