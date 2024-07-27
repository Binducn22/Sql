CREATE DATABASE employee;
USE employee;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    HireDate DATE CHECK (HireDate >= '2000-01-01')
);

ALTER TABLE Employees
ADD CONSTRAINT UQ_FirstName UNIQUE (FirstName);

ALTER TABLE Employees
ADD CONSTRAINT CHK_LastName_NotNull CHECK (LastName IS NOT NULL);

ALTER TABLE Employees
DROP CONSTRAINT UQ_FirstName;

ALTER TABLE Employees
DROP CONSTRAINT CHK_LastName_NotNull;

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, HireDate)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '2021-05-01'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2019-07-15'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '2018-03-20'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '2020-11-10'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '2022-01-22');

ALTER TABLE Employees
ADD CONSTRAINT CHK_FirstName_NotEmpty CHECK (FirstName <> '');

ALTER TABLE Employees
ADD CONSTRAINT UQ_Email UNIQUE (Email);

ALTER TABLE Employees
DROP CONSTRAINT CHK_FirstName_NotEmpty;

ALTER TABLE Employees
DROP INDEX UQ_Email;

SELECT * FROM Employees;

