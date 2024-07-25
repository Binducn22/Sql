CREATE DATABASE states;
USE states;

CREATE TABLE state_info (
    state_id BIGINT,
    state_name VARCHAR(255),
    state_capital VARCHAR(255),
    state_population BIGINT,
    state_area BIGINT,
    state_language VARCHAR(255),
    literacy_rate BIGINT,
    density BIGINT,
    sex_ratio BIGINT,
    growth_rate BIGINT
);

ALTER TABLE state_info ADD COLUMN state_gdp BIGINT;
ALTER TABLE state_info ADD COLUMN state_hdi FLOAT;
ALTER TABLE state_info ADD COLUMN state_unemployment_rate FLOAT;
ALTER TABLE state_info ADD COLUMN state_poverty_rate FLOAT;
ALTER TABLE state_info ADD COLUMN state_urban_population BIGINT;

ALTER TABLE state_info CHANGE COLUMN state_id state_identifier BIGINT;
ALTER TABLE state_info CHANGE COLUMN state_name state_title VARCHAR(255);
ALTER TABLE state_info CHANGE COLUMN state_capital capital_city VARCHAR(255);
ALTER TABLE state_info CHANGE COLUMN state_population total_population BIGINT;
ALTER TABLE state_info CHANGE COLUMN state_area total_area BIGINT;

INSERT INTO state_info (
    state_identifier,
    state_title,
    capital_city,
    total_population,
    total_area,
    state_language,
    literacy_rate,
    density,
    sex_ratio,
    growth_rate,
    state_gdp,
    state_hdi,
    state_unemployment_rate,
    state_poverty_rate,
    state_urban_population
) VALUES
(1, 'Maharashtra', 'Mumbai', 124615357, 307713, 'Marathi', 82.34, 365, 925, 1.2, 2345678901234, 0.654, 4.5, 12.1, 54848869),
(2, 'Uttar Pradesh', 'Lucknow', 230839404, 240928, 'Hindi', 78.19, 829, 912, 1.5, 3456789012345, 0.543, 5.2, 15.3, 44618555),
(3, 'Bihar', 'Patna', 103804637, 94163, 'Hindi', 63.82, 1102, 898, 1.8, 4567890123456, 0.421, 6.1, 18.5, 13646619),
(4, 'West Bengal', 'Kolkata', 97795313, 88752, 'Bengali', 76.26, 1029, 923, 1.1, 5678901234567, 0.612, 4.8, 13.9, 28332899),
(5, 'Andhra Pradesh', 'Amaravati', 54533962, 160205, 'Telugu', 67.02, 308, 914, 1.4, 6789012345678, 0.492, 5.5, 16.2, 17804811),
(6, 'Madhya Pradesh', 'Bhopal', 85358954, 308245, 'Hindi', 70.63, 236, 908, 1.6, 7890123456789, 0.573, 5.9, 17.4, 23412191),
(7, 'Tamil Nadu', 'Chennai', 76656206, 130058, 'Tamil', 80.33, 555, 929, 1.3, 8901234567890, 0.655, 4.2, 12.5, 34874811),
(8, 'Rajasthan', 'Jaipur', 79536709, 342239, 'Hindi', 66.11, 201, 903, 1.7, 9012345678901, 0.461, 6.3, 19.1, 24994519),
(9, 'Karnataka', 'Bengaluru', 67562686, 191791, 'Kannada', 75.36, 319, 918, 1.2, 0123456789012, 0.593, 5.1, 14.8, 33861589),
(10, 'Gujarat', 'Gandhinagar', 69618917, 196024, 'Gujarati', 79.31, 308, 927, 1.5, 1234567890123, 0.631, 4.9, 13.4, 31736141),
(11, 'Odisha', 'Bhubaneswar', 46653478, 155707, 'Odia', 72.87, 269, 911, 1.8, 2345678901234, 0.523, 6.0, 17.9, 8396846),
(12, 'Kerala', 'Thiruvananthapuram', 35122966, 38863, 'Malayalam', 93.91, 859, 935, 1.1, 3456789012345, 0.712, 3.8, 10.9, 17471135),
(13, 'Punjab', 'Chandigarh', 30351679, 50362, 'Punjabi', 75.84, 551, 924, 1.4, 4567890123456, 0.604, 5.3, 15.6, 12596191),
(14, 'Haryana', 'Chandigarh', 29241904, 44212, 'Hindi', 76.34, 573, 913, 1.6, 5678901234567, 0.585, 5.5, 16.3, 13087309),
(15, 'Jharkhand', 'Ranchi', 39537935, 79714, 'Hindi', 67.63, 414, 906, 1.9, 6789012345678, 0.513, 6.2, 18.2, 8284191),
(16, 'Uttarakhand', 'Dehradun', 11433709, 53566, 'Hindi', 79.63, 189, 922, 1.3, 7890123456789, 0.624, 4.7, 13.1, 4062811),
(17, 'Himachal Pradesh', 'Shimla', 7455981, 55673, 'Hindi', 83.78, 123, 929, 1.2, 8901234567890, 0.686, 4.3, 12.2, 2419309),
(18, 'Assam', 'Dispur', 34995670, 78438, 'Assamese', 72.19, 397, 911, 1.7, 9012345678901, 0.544, 6.1, 17.5, 6397191),
(19, 'Chhattisgarh', 'Raipur', 29794355, 135192, 'Hindi', 70.28, 189, 908, 1.6, 0123456789012, 0.562, 5.8, 16.5, 6451309),
(20, 'Jammu and Kashmir', 'Srinagar', 13567902, 125993, 'Urdu', 66.71, 56, 903, 1.4, 1234567890123, 0.508, 5.9, 16.1, 4399191);


UPDATE state_info SET state_title = 'Maharashtra1' WHERE state_identifier = 1;
UPDATE state_info SET capital_city = 'Mumbai1' WHERE state_identifier = 2;
UPDATE state_info SET total_population = 1246153570 WHERE state_identifier = 3;
UPDATE state_info SET total_area = 3077130 WHERE state_identifier = 4;
UPDATE state_info SET state_language = 'Marathi1' WHERE state_identifier = 5;
UPDATE state_info SET literacy_rate = 82.341 WHERE state_identifier = 6;
UPDATE state_info SET density = 3650 WHERE state_identifier = 7;
UPDATE state_info SET sex_ratio = 9250 WHERE state_identifier = 8;
UPDATE state_info SET growth_rate = 1.20 WHERE state_identifier = 9;
UPDATE state_info SET state_gdp = 23456789012340 WHERE state_identifier = 10;

DELETE FROM state_info WHERE state_identifier = 1;
DELETE FROM state_info WHERE state_identifier = 2;
DELETE FROM state_info WHERE state_identifier = 3;

SELECT * FROM state_info 
WHERE state_language = 'Hindi' OR literacy_rate > 80;
SELECT * FROM state_info 
WHERE state_identifier IN (1, 3, 5, 7, 9);
SELECT * FROM state_info 
WHERE state_identifier NOT IN (1, 3, 5, 7, 9);
SELECT * FROM state_info 
WHERE state_language = 'Hindi' 
AND literacy_rate > 70;

SELECT * FROM state_info;



