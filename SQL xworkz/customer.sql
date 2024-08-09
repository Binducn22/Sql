CREATE DATABASE customers;
use customers;
CREATE TABLE customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  contact_email VARCHAR(100) UNIQUE,
  phone_number VARCHAR(15),
  registration_date DATE NOT NULL,
  CONSTRAINT chk_customer_id CHECK (customer_id > 0)
);

ALTER TABLE customer
ADD CONSTRAINT chk_phone_number_length
CHECK (LENGTH(phone_number) = 15);

ALTER TABLE customer
ADD CONSTRAINT unique_phone_number
UNIQUE (phone_number);

ALTER TABLE customer
DROP CONSTRAINT chk_phone_number_length;

ALTER TABLE customer
DROP CONSTRAINT unique_phone_number;

INSERT INTO customer (customer_id, customer_name, contact_email, phone_number, registration_date) VALUES
(1, 'John Doe', 'john.doe@example.com', '555-0100', '2024-01-15'),
(2, 'Jane Smith', 'jane.smith@example.com', '555-0101', '2024-01-16'),
(3, 'Emily Johnson', 'emily.johnson@example.com', '555-0102', '2024-01-17'),
(4, 'Michael Brown', 'michael.brown@example.com', '555-0103', '2024-01-18'),
(5, 'Linda Davis', 'linda.davis@example.com', '555-0104', '2024-01-19');

ALTER TABLE customer
ADD CONSTRAINT chk_customer_name_length
CHECK (LENGTH(customer_name) <= 100);

ALTER TABLE customer
ADD CONSTRAINT unique_contact_email
UNIQUE (contact_email);

ALTER TABLE customer
DROP CONSTRAINT chk_customer_name_length;

ALTER TABLE customer
DROP CONSTRAINT unique_contact_email;

SELECT * FROM customer;
show table status;