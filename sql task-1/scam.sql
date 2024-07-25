CREATE DATABASE scam;
USE scam;

CREATE TABLE scam_info (
    scam_id BIGINT,
    scam_name VARCHAR(255),
    scam_category VARCHAR(255),
    scam_amount BIGINT,
    scam_reported_date BIGINT,
    scam_happened_location VARCHAR(255),
    scam_description VARCHAR(255),
    scam_status BOOLEAN,
    scam_reported_by VARCHAR(255),
    scam_updated_date BIGINT
);


ALTER TABLE scam_info ADD COLUMN scam_type VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_source VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_destination VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_details VARCHAR(255);
ALTER TABLE scam_info ADD COLUMN scam_feedback VARCHAR(255);

ALTER TABLE scam_info
CHANGE COLUMN scam_name scam_title VARCHAR(255),
CHANGE COLUMN scam_category scam_group VARCHAR(255),
CHANGE COLUMN scam_amount scam_value BIGINT,
CHANGE COLUMN scam_reported_date scam_submitted_date VARCHAR(255),
CHANGE COLUMN scam_reported_by scam_submitted_by VARCHAR(255);

ALTER TABLE scam_info MODIFY COLUMN scam_id INT;
ALTER TABLE scam_info MODIFY COLUMN scam_value BIGINT;
ALTER TABLE scam_info MODIFY COLUMN scam_submitted_date VARCHAR(255);
ALTER TABLE scam_info MODIFY COLUMN scam_status BOOLEAN;
ALTER TABLE scam_info MODIFY COLUMN scam_description VARCHAR(255);

INSERT INTO scam_info (scam_title, scam_group, scam_value, scam_submitted_date, scam_submitted_by, scam_description)
VALUES
('Fake Online Store', 'Phishing', 100.50, '01 JAN 2022', 'John Doe', 'Fake online store scamming people'),
('Room Scam', 'Social Engineering', 500.00, '05 JAN 2022', 'Jane Smith', 'Scammer pretending to be a loved one'),
('Investment Scam', 'Financial Fraud', 10000.00, '10 JAN 2022', 'Bob Johnson', 'Fake investment opportunity'),
('Tech Support Scam', 'Phishing', 200.00, '15 JAN 2022', 'Alice Brown', 'Fake tech support scamming people'),
('Charity Scam', 'Financial Fraud', 500.00, '20 JAN 2022', 'Mike Davis', 'Fake charity scamming people'),
('Online Auction Scam', 'Phishing', 150.00, '25 JAN 2022', 'Emily Chen', 'Fake online auction scamming people'),
('Loan Scam', 'Financial Fraud', 1000.00, '01 FEB 2022', 'David Lee', 'Fake loan scamming people'),
('Credit Card Scam', 'Phishing', 2000.00, '05 FEB 2022', 'Sophia Patel', 'Fake credit card scamming people'),
('Cryptocurrency Scam', 'Financial Fraud', 5000.00, '10 FEB 2022', 'Jackson Hall', 'Fake cryptocurrency scamming people'),
('Job Scam', 'Social Engineering', 800.00, '15 FEB 2022', 'Olivia Martin', 'Fake job scamming people'),
('Travel Scam', 'Phishing', 1200.00, '20 FEB 2022', 'Ava Taylor', 'Fake travel scamming people'),
('Lottery Scam', 'Financial Fraud', 3000.00, '25 FEB 2022', 'Liam Brooks', 'Fake lottery scamming people'),
('Gift Card Scam', 'Phishing', 100.00, '01 MAR 2022', 'Noah White', 'Fake gift card scamming people'),
('Insurance Scam', 'Financial Fraud', 2500.00, '05 MAR 2022', 'Elijah Lewis', 'Fake insurance scamming people'),
('Real Estate Scam', 'Phishing', 5000.00, '10 MAR 2022', 'Abigail Harris', 'Fake real estate scamming people'),
('Government Grant Scam', 'Financial Fraud', 2000.00, '15 MAR 2022', 'Caleb Thompson', 'Fake government grant scamming people'),
('Mystery Shopper Scam', 'Social Engineering', 150.00, '20 MAR 2022', 'Julian Sanchez', 'Fake mystery shopper scamming people'),
('Home Improvement Scam', 'Phishing', 3000.00, '25 MAR 2022', 'Kayla Russell', 'Fake home improvement scamming people'),
('Pyramid Scheme', 'Financial Fraud', 10000.00, '01 APR 2022', 'Logan Price', 'Fake pyramid scheme scamming people'),
('Fake Prize Scam', 'Phishing', 500.00, '02 APR 2022', 'Ethan Kim', 'Fake prize scamming people');

UPDATE scam_info SET scam_type = 'Online' WHERE scam_id = 1;
UPDATE scam_info SET scam_source = 'Social Media' WHERE scam_id = 2;
UPDATE scam_info SET scam_destination = 'Bank Account' WHERE scam_id = 3;
UPDATE scam_info SET scam_details = 'Fake website' WHERE scam_id = 4;
UPDATE scam_info SET scam_feedback = 'Victim reported' WHERE scam_id = 5;
UPDATE scam_info SET scam_value = 1500.00 WHERE scam_id = 6;
UPDATE scam_info SET scam_submitted_date = '10 JAN 2022' WHERE scam_id = 7;
UPDATE scam_info SET scam_submitted_by = 'Michael Davis' WHERE scam_id = 8;
UPDATE scam_info SET scam_description = 'Scammer posed as a loved one' WHERE scam_id = 9;
UPDATE scam_info SET scam_status = TRUE WHERE scam_id = 10;

DELETE FROM scam_info WHERE scam_id = 1;
DELETE FROM scam_info WHERE scam_id = 2;
DELETE FROM scam_info WHERE scam_id = 3;

SELECT * FROM scam_info 
WHERE scam_group = 'Phishing' 
AND scam_value > 1000.00;

SELECT * FROM scam_info 
WHERE scam_group = 'Phishing' 
OR scam_group = 'Social Engineering';

SELECT * FROM scam_info 
WHERE scam_group IN ('Phishing', 'Social Engineering', 'Financial Fraud');

SELECT * FROM scam_info 
WHERE scam_group NOT IN ('Phishing', 'Social Engineering');

SELECT * FROM scam_info;
