CREATE DATABASE company;
USE company;
CREATE TABLE Departments (
Department_Name varchar(20),
Department_Description varchar(20),
Location varchar(20),
Manager_ID varchar(20),
Employee_Count int,
Budget int,
Department_ID bigint,
Parent_Department_ID bigint
);

CREATE TABLE Projects (
Project_Name varchar(20),
Project_Description varchar(20),
Start_Date varchar(20),
End_Date varchar(20),
Budget int,
Status int,
Project_ID bigint,
Department_ID bigint
);

CREATE TABLE Payments (
Payment_ID varchar(20),
Order_ID varchar(20),
Payment_Date varchar(20),
Payment_Method varchar(20),
Amount int,
Currency varchar(20),
Transaction_ID bigint
);

CREATE TABLE Shipments (
Shipment_ID varchar(20),
Order_ID varchar(20),
Shipment_Date varchar(20),
Shipment_Status varchar(20),
Carrier varchar(20),
Tracking_Number int,
Weight bigint,
Invoice_ID bigint
);

CREATE TABLE Reviews (
Review_ID varchar(20),
Product_ID varchar(20),
Review_Date varchar(20),
Rating int,
Review_Text varchar(20),
Helpfulness int,
Reviewer_ID bigint,
Order_ID bigint
);
