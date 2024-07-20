CREATE DATABASE Hospital;
USE Hospital; 
CREATE TABLE hospital_info (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(100),
  country VARCHAR(100),
  phone VARCHAR(20),
  email VARCHAR(100),
  website VARCHAR(100),
  beds INT
);

CREATE TABLE tourist_places (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(100),
  state VARCHAR(100),
  country VARCHAR(100),
  description VARCHAR(255),
  rating DECIMAL(2,1),
  reviews INT,
  popularity INT,
  image_url VARCHAR(255)
);

INSERT INTO hospital_info VALUES (1, 'Mayo Clinic', '200 1st St SW', 'Rochester', 'MN', 'USA', '507-284-2511', 'mayoclinic@mayo.edu', '(link unavailable)', 2000);
INSERT INTO hospital_info VALUES(2, 'Cleveland Clinic', '9500 Euclid Ave', 'Cleveland', 'OH', 'USA', '216-444-2200', 'clevelandclinic@clevelandclinic.org', '(link unavailable)', 1400);
INSERT INTO hospital_info VALUES(3, 'Johns Hopkins Hospital', '1800 Orleans St', 'Baltimore', 'MD', 'USA', '410-955-5000', 'jhospital@jh.edu', '(link unavailable)', 1000);
INSERT INTO hospital_info VALUES (4, 'Massachusetts General Hospital', '55 Fruit St', 'Boston', 'MA', 'USA', '617-726-2000', 'mgh@mgh.harvard.edu', '(link unavailable)', 1000);
INSERT INTO hospital_info VALUES (5, 'University of California, Los Angeles Medical Center', '757 Westwood Blvd', 'Los Angeles', 'CA', 'USA', '310-825-9111', 'uclahealth@ucla.edu', '(link unavailable)', 800);
INSERT INTO hospital_info VALUES(6, 'NewYork-Presbyterian Hospital', '525 E 68th St', 'New York', 'NY', 'USA', '212-746-5454', 'nyp@nyp.org', '(link unavailable)', 2500);
INSERT INTO hospital_info VALUES(7, 'University of California, San Francisco Medical Center', '505 Parnassus Ave', 'San Francisco', 'CA', 'USA', '415-353-2300', 'ucsfmedicalcenter@ucsf.edu', '(link unavailable)', 700);
INSERT INTO hospital_info VALUES(8, 'Duke University Hospital', '2301 Erwin Rd', 'Durham', 'NC', 'USA', '919-684-8111', 'dukehealth@duke.edu', '(link unavailable)', 900);
INSERT INTO hospital_info VALUES(9, 'Stanford Health Care', '300 Pasteur Dr', 'Stanford', 'CA', 'USA', '650-723-5700', 'stanfordhealthcare@stanford.edu', '(link unavailable)', 600);
INSERT INTO hospital_info VALUES(10, 'University of Pennsylvania Health System', '3400 Civic Center Blvd', 'Philadelphia', 'PA', 'USA', '800-789-7366', 'uphs@uphs.upenn.edu', '(link unavailable)', 1500);
INSERT INTO hospital_info VALUES(11, 'Northwestern Memorial Hospital', '251 E Huron St', 'Chicago', 'IL', 'USA', '312-926-2000', 'nmh@nmh.org', '(link unavailable)', 900);
INSERT INTO hospital_info VALUES(12, 'University of Washington Medical Center', '1959 NE Pacific St', 'Seattle', 'WA', 'USA', '206-598-3300', 'uwmcf@uw.edu', '(link unavailable)', 500);
INSERT INTO hospital_info VALUES(13, 'Brigham and Women''s Hospital', '75 Francis St', 'Boston', 'MA', 'USA', '617-732-5500', 'bwh@bwh.harvard.edu', '(link unavailable)', 800);
INSERT INTO hospital_info VALUES(14, 'Columbia University Irving Medical Center', '161 Fort Washington Ave', 'New York', 'NY', 'USA', '212-305-2500', 'cumc@columbia.edu', '(link unavailable)', 700);
INSERT INTO hospital_info VALUES(15, 'University of California, San Diego Medical Center', '200 W Arbor Dr', 'San Diego', 'CA', 'USA', '858-657-7000', 'ucsdmedicalcenter@ucsd.edu', '(link unavailable)', 600);
INSERT INTO hospital_info VALUES(16, 'University of Michigan Health System', '1500 E Medical Center Dr', 'Ann Arbor', 'MI', 'USA', '734-936-4000', 'umhs@umich.edu', '(link unavailable)', 1000);
INSERT INTO hospital_info VALUES(17, 'University of Chicago Medical Center', '5841 S Maryland Ave', 'Chicago', 'IL', 'USA', '773-702-6247', 'uchicagomedicalcenter@uchicago.edu', '(link unavailable)', 700);
INSERT INTO hospital_info VALUES(18, 'Dana-Farber Cancer Institute', '450 Brookline Ave', 'Boston', 'MA', 'USA', '617-632-3000', 'dana-farber@dfci.harvard.edu', '(link unavailable)', 500);
INSERT INTO hospital_info VALUES(19, 'MD Anderson Cancer Center', '1515 Holcombe Blvd', 'Houston', 'TX', 'USA', '713-792-6161', 'mdanderson@mdanderson.org', '(link unavailable)', 600);
INSERT INTO hospital_info VALUES(20, 'Memorial Sloan Kettering Cancer Center', '1275 York Ave', 'New York', 'NY', 'USA', '212-639-2000', 'msk@mskcc.org', '(link unavailable)', 500);

DESC hospital_info;
SELECT * FROM hospital_info;

INSERT INTO tourist_places VALUES(1, 'Grand Canyon National Park', 'Grand Canyon Village', 'Tusayan', 'AZ', 'USA', 'One of the most iconic natural wonders in the United States.', 4.8, 10000, 100, '(link)');
INSERT INTO tourist_places VALUES(2, 'Statue of Liberty National Monument', 'Liberty Island', 'New York', 'NY', 'USA', 'An iconic symbol of freedom and democracy.', 4.7, 5000, 90, '(link)');
INSERT INTO tourist_places VALUES(3, 'Yellowstone National Park', 'Yellowstone National Park', 'Yellowstone', 'WY', 'USA', 'America''s first national park, known for geysers and wildlife.', 4.7, 8000, 95, '(link)');
INSERT INTO tourist_places VALUES(4, 'Golden Gate Bridge', 'Golden Gate Bridge', 'San Francisco', 'CA', 'USA', 'An iconic suspension bridge and symbol of San Francisco.', 4.6, 6000, 90, '(link)');
INSERT INTO tourist_places VALUES(5, 'Disney World', 'Walt Disney World Resort', 'Orlando', 'FL', 'USA', 'A popular theme park resort.', 4.5, 15000, 95, '(link)');
INSERT INTO tourist_places VALUES(6, 'Times Square', 'Times Square', 'New York', 'NY', 'USA', 'A bustling square in the heart of Manhattan.', 4.4, 10000, 90, '(link )');
INSERT INTO tourist_places VALUES(7, 'Las Vegas Strip', 'Las Vegas Strip', 'Las Vegas', 'NV', 'USA', 'A famous stretch of road known for casinos and entertainment.', 4.4, 8000, 90, '(link)');
INSERT INTO tourist_places VALUES(8, 'Alcatraz Island', 'Alcatraz Island', 'San Francisco', 'CA', 'USA', 'A former prison turned national park.', 4.4, 5000, 85, '(link)');
INSERT INTO tourist_places VALUES(9, 'Universal Studios Hollywood', 'Universal Studios Hollywood', 'Los Angeles', 'CA', 'USA', 'A popular film studio and theme park.', 4.3, 6000, 85, '(link )');
INSERT INTO tourist_places VALUES(10, 'Mysore Palace', 'Sayyaji Rao Rd', 'Mysore', 'Karnataka', 'India', 'A historic palace and tourist attraction in Mysore.', 4.5, 2000, 85, '(link )');
INSERT INTO tourist_places VALUES(11, 'Coorg', 'Madikeri', 'Coorg', 'Karnataka', 'India', 'A scenic hill station and coffee plantation region.', 4.7, 1500, 90, '(link)');
INSERT INTO tourist_places VALUES(12, 'Hampi', 'Hampi', 'Bellary', 'Karnataka', 'India', 'Ancient ruins and temples of the Vijayanagara Empire.', 4.8, 1000, 95, '(link )');
INSERT INTO tourist_places VALUES(13, 'Bannerghatta National Park', 'Bannerghatta', 'Bengaluru', 'Karnataka', 'India', 'A national park and wildlife sanctuary in Bengaluru.', 4.5, 500, 80, '(link )');
INSERT INTO tourist_places VALUES(14, 'Belur', 'Belur', 'Hassan', 'Karnataka', 'India', 'A historic temple town and tourist destination.', 4.6, 200, 75, '(link )');
INSERT INTO tourist_places VALUES(15, 'Gokarna', 'Gokarna', 'Uttara Kannada', 'Karnataka', 'India', 'A scenic beach town and Hindu pilgrimage site.', 4.7, 300, 85, '(link )');
INSERT INTO tourist_places VALUES(16, 'Mangalore', 'Mangalore', 'Dakshina Kannada', 'Karnataka', 'India', 'A coastal city and port in Karnataka.', 4.5, 400, 80, '(link )');
INSERT INTO tourist_places VALUES(17, 'Shivanasamudra Falls', 'Shivanasamudra', 'Chamarajanagar', 'Karnataka', 'India', 'A scenic waterfall and trekking destination.', 4.6, 100, 70, '(link )');
INSERT INTO tourist_places VALUES(18, 'Badami', 'Badami', 'Bagalkot', 'Karnataka', 'India', 'A historic town and archaeological site.', 4.6, 150, 75, '(link )');
INSERT INTO tourist_places VALUES(19, 'Aihole', 'Aihole', 'Bagalkot', 'Karnataka', 'India', 'A historic village and archaeological site.', 4.5, 100, 70, '(link )');
INSERT INTO tourist_places VALUES(20, 'Pattadakal', 'Pattadakal', 'Bagalkot', 'Karnataka', 'India', 'A historic village and UNESCO World Heritage Site.', 4.6, 120, 75, '(link)');

DESC tourist_places;
SELECT * FROM tourist_places;