CREATE DATABASE RTO;
USE RTO;
CREATE TABLE LLR_INFO (
  LLR_ID INT PRIMARY KEY,
  FIRST_NAME VARCHAR(255),
  LAST_NAME VARCHAR(255),
  DATE_OF_BIRTH DATE,
  ADDRESS VARCHAR(255),
  CITY VARCHAR(255),
  STATE VARCHAR(255),
  ZIP_CODE INT,
  EMAIL VARCHAR(255)
);
INSERT INTO LLR_INFO (LLR_ID, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, ADDRESS, CITY, STATE, ZIP_CODE, EMAIL)
VALUES
(1, 'Rahul', 'Jain', '1990-01-01', '123 Main St', 'New Delhi', 'Delhi', 110001, 'rahul.jain@email.com'),
(2, 'Priya', 'Gupta', '1992-02-02', '456 Sector 4', 'Mumbai', 'Maharashtra', 400001,  'priya.gupta@email.com'),
(3, 'Kunal', 'Singh', '1991-03-03', '789 Defence Colony', 'Bangalore', 'Karnataka', 560001, 'kunal.singh@email.com'),
(4, 'Sonal', 'Desai', '1993-04-04', '321 Shastri Nagar', 'Chennai', 'Tamil Nadu', 600001,  'sonal.desai@email.com'),
(5, 'Arjun', 'Kumar', '1994-05-05', '901 Kaushambi', 'Hyderabad', 'Telangana', 500001, 'arjun.kumar@email.com'),
(6, 'Rhea', 'Khanna', '1995-06-06', '111 Gurgaon', 'Pune', 'Maharashtra', 411001, 'rhea.khanna@email.com'),
(7, 'Tanmay', 'Rao', '1996-07-07', '222 Kolkata', 'Kolkata', 'West Bengal', 700001,  'tanmay.rao@email.com'),
(8, 'Neha', 'Sharma', '1997-08-08', '333 Lucknow', 'Lucknow', 'Uttar Pradesh', 226001,  'neha.sharma@email.com'),
(9, 'Aryan', 'Khan', '1998-09-09', '444 Ahmedabad', 'Ahmedabad', 'Gujarat', 380001,'aryan.khan@email.com'),
(10, 'Mahesh', 'Patel', '1999-10-10', '555 Jaipur', 'Jaipur', 'Rajasthan', 302001,  'mahesh.patel@email.com');

INSERT INTO LLR_INFO (LLR_ID, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, ADDRESS, CITY, STATE, ZIP_CODE, EMAIL)
VALUES (1, 'Rahul', 'Jain', '1990-01-01', '123 Main St', 'New Delhi', 'Delhi', 110001,  'rahul.jain@email.com')
ON DUPLICATE KEY UPDATE FIRST_NAME = 'Jain', LAST_NAME = 'Rahul';
REPLACE INTO LLR_INFO (LLR_ID, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, ADDRESS, CITY, STATE, ZIP_CODE, EMAIL)
VALUES (8, 'Neha', 'gupta', '1997-012-08', ' Lucknow', 'Lucknow', 'Uttar Pradesh', 226001,  'neha.sharma@email.com');
SELECT*FROM LLR_INFO;

CREATE TABLE LLR_TEST_INFO (
    LLR_ID INT,
    TEST_ID INT PRIMARY KEY,
    TEST_DATE DATE,
    TEST_RESULT VARCHAR(255),
    TEST_LOCATION VARCHAR(255),
    TEST_TYPE VARCHAR(255),
    TEST_STATUS VARCHAR(255),
    CREATED_AT DATE,
    UPDATED_AT DATE,
    COMMENTS VARCHAR(255),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);
INSERT INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, TEST_RESULT, TEST_LOCATION, TEST_TYPE, TEST_STATUS,
 CREATED_AT, UPDATED_AT, COMMENTS)
VALUES
(1, 101, '2024-07-01', 'Pass', 'Center A', 'Written', 'Completed', '2024-06-30', '2024-07-01', 'Passed with good score'),
(2, 102, '2024-07-02', 'Fail', 'Center B', 'Practical', 'Pending', '2024-07-01', '2024-07-02', 'Failed due to errors'),
(3, 104, '2024-07-04', 'Pass', 'Center C', 'Practical', 'Completed', '2024-07-03', '2024-07-04', 'Passed with minor issues'),
(4, 105, '2024-07-05', 'Fail', 'Center D', 'Written', 'Pending', '2024-07-04', '2024-07-05', 'Failed due to missed answers'),
(5, 107, '2024-07-07', 'Pass', 'Center E', 'Written', 'Completed', '2024-07-06', '2024-07-07', 'Passed with high marks'),
(6, 108, '2024-07-08', 'Fail', 'Center F', 'Practical', 'Pending', '2024-07-07', '2024-07-08', 'Failed due to lack of practice'),
(7, 113, '2024-07-13', 'Pass', 'Center A', 'Practical', 'Completed', '2024-07-12', '2024-07-13', 'Passed with good marks'),
(8, 114, '2024-07-14', 'Fail', 'Center B', 'Written', 'Pending', '2024-07-13', '2024-07-14', 'Failed due to errors'),
(9, 117, '2024-07-17', 'Fail', 'Center E', 'Written', 'Pending', '2024-07-16', '2024-07-17', 'Failed due to missed answers'),
(10, 118, '2024-07-18', 'Pass', 'Center F', 'Practical', 'Completed', '2024-07-17', '2024-07-18', 'Passed with excellent score');
SELECT*FROM LLR_TEST_INFO;
INSERT INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, TEST_RESULT, TEST_LOCATION, TEST_TYPE, TEST_STATUS, CREATED_AT, UPDATED_AT, COMMENTS)
VALUES
(1, 101, '2024-07-01', 'Pass', 'Center A', 'Written', 'Completed', '2024-06-30', '2024-07-01', 'Passed with good score'),
(2, 102, '2024-07-02', 'Fail', 'Center B', 'Practical', 'Pending', '2024-07-01', '2024-07-02', 'Failed due to errors')
ON DUPLICATE KEY UPDATE
    TEST_DATE = '2023-07-01',
    TEST_STATUS='completed'; 
REPLACE INTO LLR_TEST_INFO (LLR_ID, TEST_ID, TEST_DATE, TEST_RESULT, TEST_LOCATION, TEST_TYPE, TEST_STATUS, CREATED_AT, UPDATED_AT, COMMENTS)
VALUES
(1, 101, '2024-07-01', 'Pass', 'Center R', 'Written', 'Completed', '2024-06-30', '2024-07-01', 'Passed with good score');


CREATE TABLE DRIVING_LICENCE_INFO (
    DL_ID INT PRIMARY KEY,               
    TEST_ID INT,                          
    LLR_ID INT,                           
    ISSUE_DATE DATE,                      
    EXPIRY_DATE DATE,                     
    STATUS VARCHAR(20),                  
    CLASS VARCHAR(20),                  
    LICENSE_NUMBER VARCHAR(50),          
    ADDRESS VARCHAR(255),                
    PHOTO_PATH VARCHAR(255),             
    FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);
INSERT INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, ISSUE_DATE, EXPIRY_DATE, STATUS, CLASS, LICENSE_NUMBER, ADDRESS, PHOTO_PATH)
VALUES
(1, 101, 1, '2024-07-01', '2034-07-01', 'Active', 'B', 'DL123456', '123 Elm St', '/photos/dl123456'),
(2, 102, 2, '2024-07-02', '2034-07-02', 'Inactive', 'A', 'DL654321', '456 Oak St', '/photos/dl654321'),
(3, 104, 3, '2024-07-03', '2034-07-03', 'Active', 'C', 'DL789012', '789 Pine St', '/photos/dl789012'),
(4, 105, 4, '2024-07-04', '2034-07-04', 'Active', 'B', 'DL345678', '101 Maple St', '/photos/dl345678'),
(5, 107, 5, '2024-07-05', '2034-07-05', 'Expired', 'A', 'DL987654', '202 Birch St', '/photos/dl987654'),
(6, 108, 6, '2024-07-06', '2034-07-06', 'Active', 'B', 'DL567890', '303 Cedar St', '/photos/dl567890'),
(7, 113, 7, '2024-07-07', '2034-07-07', 'Active', 'A', 'DL123987', '404 Fir St', '/photos/dl123987'),
(8, 114, 8, '2024-07-08', '2034-07-08', 'Expired', 'C', 'DL456123', '505 Spruce St', '/photos/dl456123'),
(9, 117, 9, '2024-07-09', '2034-07-09', 'Active', 'B', 'DL789345', '606 Oak St', '/photos/dl789345'),
(10, 118,10, '2024-07-10', '2034-07-10', 'Inactive', 'A', 'DL321654', '707 Pine St', '/photos/dl321654');

INSERT INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, ISSUE_DATE, EXPIRY_DATE, STATUS, CLASS, LICENSE_NUMBER, ADDRESS, PHOTO_PATH)
VALUES
    (1, 101, 1, '2024-07-01', '2034-07-01', 'Active', 'B', 'DL123456', '123 Elm St', '/photos/dl123456'),
    (2, 102, 2, '2024-07-02', '2034-07-02', 'Inactive', 'A', 'DL654321', '456 Oak St', '/photos/dl654321')
ON DUPLICATE KEY UPDATE
LLR_ID = 2;
REPLACE INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, ISSUE_DATE, EXPIRY_DATE, STATUS, CLASS, LICENSE_NUMBER, ADDRESS, PHOTO_PATH)
VALUES
(5, 107, 5, '2024-07-05', '2034-07-05', 'Expired', 'A', 'DL987654', '202 Birch St', '/photos/dl987654'),
(6, 108, 6, '2024-07-06', '2034-07-06', 'Active', 'B', 'DL567890', '303 Cedar St', '/photos/dl567890');
SELECT*FROM DRIVING_LICENCE_INFO;



CREATE TABLE DRIVING_LICENSE_TEST_INFO (
    DL_ID INT,                            
    TEST_DATE DATE,                     
    RESULT VARCHAR(10),                   
    SCORE INT,                            
    EXAMINER_NAME VARCHAR(100),           
    TEST_CENTER VARCHAR(100),           
    DURATION INT,                         
    COMMENTS TEXT,                       
    FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID)
);
INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_DATE, RESULT, SCORE, EXAMINER_NAME, TEST_CENTER, DURATION, COMMENTS)
VALUES
(1, '2024-07-01', 'Pass', 85, 'John Doe', 'Center A', 60, 'Good performance, no issues.'),
(2, '2024-07-02', 'Fail', 45, 'Jane Smith', 'Center B', 90, 'Failed to meet the minimum score.'),
(3, '2024-07-03', 'Pass', 92, 'Michael Brown', 'Center C', 70, 'Excellent performance, well done.'),
(4, '2024-07-04', 'Pass', 78, 'Emily Davis', 'Center D', 65, 'Passed with some minor issues.'),
(5, '2024-07-05', 'Fail', 50, 'David Wilson', 'Center E', 80, 'Did not pass, need more practice.'),
(6, '2024-07-06', 'Pass', 88, 'Sarah Miller', 'Center F', 55, 'Good performance overall.'),
(7, '2024-07-07', 'Pass', 81, 'James Anderson', 'Center G', 75, 'Passed, but some room for improvement.'),
(8, '2024-07-08', 'Fail', 40, 'Olivia Moore', 'Center H', 85, 'Failed due to several errors.'),
(9, '2024-07-09', 'Pass', 90, 'William Taylor', 'Center I', 60, 'Passed with high marks.'),
(10, '2024-07-10', 'Fail', 55, 'Sophia Harris', 'Center J', 70, 'Need to work on certain areas.');

INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_DATE, RESULT, SCORE, EXAMINER_NAME, TEST_CENTER, DURATION, COMMENTS)
VALUES
(1, '2024-07-01', 'Pass', 85, 'John Doe', 'Center A', 60, 'Good performance, no issues.'),
(3, '2024-07-03', 'Pass', 92, 'Michael Brown', 'Center C', 70, 'Excellent performance, well done.')
ON DUPLICATE KEY UPDATE
    RESULT = 'Pass';
REPLACE INTO DRIVING_LICENSE_TEST_INFO (DL_ID, TEST_DATE, RESULT, SCORE, EXAMINER_NAME, TEST_CENTER, DURATION, COMMENTS)
VALUES
(8, '2024-07-08', 'Fail', 40, 'Olivia Moore', 'Center H', 85, 'Failed due to several errors.');
SELECT*FROM DRIVING_LICENSE_TEST_INFO;