CREATE DATABASE orders;
use orders;
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE NOT NULL,
  customer_id INT,
  total_amount INT CHECK (total_amount >= 0),
  payment_status VARCHAR(20),
  UNIQUE (order_date, customer_id)
);

ALTER TABLE orders
ADD CONSTRAINT unique_payment_status UNIQUE (payment_status);

ALTER TABLE orders
ADD CONSTRAINT chk_payment_status
CHECK (payment_status IN ('Paid', 'Pending', 'Overdue'));

ALTER TABLE orders
DROP CONSTRAINT unique_payment_status;

ALTER TABLE orders
DROP CONSTRAINT chk_payment_status;

INSERT INTO orders (order_id, order_date, customer_id, total_amount, payment_status) VALUES
(1, '2024-01-15', 1, 300, 'Paid'),
(2, '2024-01-16', 2, 150, 'Pending'),
(3, '2024-01-17', 3, 450, 'Overdue'),
(4, '2024-01-18', 4, 120, 'Paid'),
(5, '2024-01-19', 5, 75, 'Pending');

ALTER TABLE orders
ADD CONSTRAINT unique_order_date
UNIQUE (order_date);


ALTER TABLE orders
ADD CONSTRAINT chk_total_amount_nonzero
CHECK (total_amount > 0);


ALTER TABLE orders
DROP CONSTRAINT unique_order_date;

ALTER TABLE orders
DROP CONSTRAINT chk_total_amount_nonzero;

SELECT * FROM orders;
