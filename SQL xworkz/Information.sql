create database Information;
use Information;

create table hospital_information(patient_id int,nofopatients int,nameofhospital varchar(20),
noofstaffs int, hospitalarea varchar(20), hospitaltype varchar(20)); 

INSERT INTO hospital_information values(102, 1022, 'Gayitri', 205, 'Rajajinagara','private');
INSERT INTO hospital_information(patient_id, nameofhospital, hospitalarea) values(201, 'Krishna','Jayanagara');
delete from hospital_information WHERE patient_id = 25;
INSERT INTO hospital_information values(12, 20, 'Lokesh', 3, 'Basavahalli', 'Private');
INSERT INTO hospital_information(nameofhospital, noofstaffs, hospitaltype) values('Suvarna', 12, 'Private');
INSERT INTO hospital_information values(56, 102, 'Harsha', 25, 'Mejastic', 'Private'); 
INSERT INTO hospital_information(patient_id, hospitalarea, hospitaltype) values(16, 'Indranagar', 'Private');
INSERT INTO hospital_information values(5, 90, 'Somshekar', 20, 'Jaynagara','Private'); 
INSERT INTO hospital_information(noofstaffs, nameofhospital, nofopatients) values(20, 'Krishna', 50);
INSERT INTO hospital_information values(1, 20, 'Rakesh',5, 'Rajajonagara','Private');
INSERT INTO hospital_information(patient_id, noofstaffs, hospitalarea) values(45, 50,'Kengeri');
INSERT INTO hospital_information (patient_id,nofopatients,nameofhospital, noofstaffs, hospitaltype) values(109, 1029, 'Vikram', 212, 'private');
INSERT INTO hospital_information VALUES (110, 1030, 'Priya', 213, 'Marathahalli', 'government');
INSERT INTO hospital_information VALUES (104, 1024, 'Aisha', 207, 'Indiranagar', 'government');
INSERT INTO hospital_information(patient_id,nofopatients,hospitaltype) values(78,80,'private');
INSERT INTO hospital_information(nofopatients, noofstaffs, hospitaltype) values(102, 50,'public');
INSERT INTO hospital_information values(87,

CREATE TABLE tourist_places (
    place_id int,
    placename VARCHAR(255),
    location VARCHAR(255),
    rating DECIMAL(3, 2)
);

insert into tourist_places values(10,'Bhadra Tiger Reserve','Muthodi',3);
insert into tourist_places (place_id, placename, location, rating) values(11, 'Taj Mahal', 'Agra',2.9);
insert into tourist_places (place_id, placename, location, rating) values(09, 'Gate way of India', 'Delhi',3);
insert into tourist_places (place_id, placename, location, rating) values(20, 'Hawa mahal', 'Rajastan',3);
insert into tourist_places (place_id, placename, location, rating) values(25, 'Mysore palace', 'Karnataka',3);
insert into tourist_places (place_id, placename, location, rating) values(52, 'Banglore palace', 'Karnataka',3);
insert into tourist_places (place_id, placename, location, rating) values(85, 'Kerala Backwaters', 'Kerala',2);
insert into tourist_places values(15, 'Mullayanagiri', 'Chikkamagaluru', 3);
insert into tourist_places values(16, 'Bababudangiri', 'Chikkamagaluru', 2);
insert into tourist_places values(17, 'KAltgiri', 'Chikkamagluru', 3);
insert into tourist_places values(56, 'Shimadhama', 'Shivamogga', 2);
insert into tourist_places (place_id, location, rating) values(64, 'Chitradurga', 3);
insert into tourist_places (placename, rating) values('Benergatta', 2);
insert into tourist_places values(74, 'Joga', 'Shivamogga', 3);
insert into tourist_places values(87, 'Ram Mandir', 'Ayodhaya', 3);
insert into tourist_places(place_id, location, rating) values(93, 'JAmmu-KAshmir', 3);
insert into tourist_places values(51, 'Statue of Unity', 'Gujrat', 4); 
insert into tourist_places values(57, 'Chitradurgada Kote', 'Chitradurgada', 5); 





select * from hospital_information;
select * from tourist_places;
select count(*) from hospital_information;
select count(*) from tourist_places;


