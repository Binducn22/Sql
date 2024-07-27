CREATE DATABASE depart;
USE depart;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE,
    Location VARCHAR(100),
    Budget INT CHECK (Budget >= 0),
    ManagerID INT
);

ALTER TABLE Departments
ADD CONSTRAINT UQ_Location UNIQUE (Location);

ALTER TABLE Departments
ADD CONSTRAINT CHK_ManagerID_NotNull CHECK (ManagerID IS NOT NULL);

ALTER TABLE Departments
DROP CONSTRAINT UQ_Location;

ALTER TABLE Departments
DROP CONSTRAINT CHK_ManagerID_NotNull;


INSERT INTO Departments (DepartmentID, DepartmentName, Location, Budget, ManagerID)
VALUES 
(1, 'HR', 'New York', 50000, 101),
(2, 'Finance', 'Chicago', 75000, 102),
(3, 'IT', 'San Francisco', 100000, 103),
(4, 'Marketing', 'Los Angeles', 60000, 104),
(5, 'Sales', 'Boston', 55000, 105);

ALTER TABLE Departments
ADD CONSTRAINT CHK_Budget_Positive CHECK (Budget > 0);

ALTER TABLE Departments
ADD CONSTRAINT UQ_ManagerID UNIQUE (ManagerID);

ALTER TABLE Departments
DROP CONSTRAINT CHK_Budget_Positive;

ALTER TABLE Departments
DROP CONSTRAINT UQ_ManagerID;

SELECT * FROM Departments;
