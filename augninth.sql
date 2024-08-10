CREATE DATABASE augninth;
USE augninth;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    HoursWorked DECIMAL(5, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 1),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 2),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 2),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 3),
(6, 'David', 'Wilson', 'david.wilson@example.com', 3),
(7, 'Eve', 'Miller', 'eve.miller@example.com', 4),
(8, 'Frank', 'Moore', 'frank.moore@example.com', 4),
(9, 'Grace', 'Taylor', 'grace.taylor@example.com', 5),
(10, 'Hank', 'Anderson', 'hank.anderson@example.com', 5),
(11, 'Ivy', 'Thomas', 'ivy.thomas@example.com', 6),
(12, 'Jack', 'Jackson', 'jack.jackson@example.com', 6),
(13, 'Karen', 'White', 'karen.white@example.com', 7),
(14, 'Leo', 'Harris', 'leo.harris@example.com', 7),
(15, 'Mona', 'Martin', 'mona.martin@example.com', 8);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Legal'),
(7, 'Product'),
(8, 'Support'),
(9, 'R&D'),       
(10, 'Customer Service'), 
(11, 'Operations'),
(12, 'Business Development'), 
(13, 'Quality Assurance'), 
(14, 'Training'), 
(15, 'Administration');

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(1, 'Project Alpha', 1),
(2, 'Project Beta', 1),
(3, 'Project Gamma', 2),
(4, 'Project Delta', 2),
(5, 'Project Epsilon', 3),
(6, 'Project Zeta', 3),
(7, 'Project Eta', 4),
(8, 'Project Theta', 4),
(9, 'Project Iota', 5),
(10, 'Project Kappa', 5),
(11, 'Project Lambda', 6),
(12, 'Project Mu', 6),
(13, 'Project Nu', 7),
(14, 'Project Xi', 7),
(15, 'Project Omicron', 8);

INSERT INTO Assignments (AssignmentID, EmployeeID, ProjectID, HoursWorked) VALUES
(1, 1, 1, 40.00),
(2, 1, 2, 30.00),
(3, 2, 1, 35.00),
(4, 2, 2, 25.00),
(5, 3, 3, 45.00),
(6, 3, 4, 20.00),
(7, 4, 3, 50.00),
(8, 4, 4, 15.00),
(9, 5, 5, 30.00),
(10, 5, 6, 25.00),
(11, 6, 5, 40.00),
(12, 6, 6, 30.00),
(13, 7, 7, 35.00),
(14, 7, 8, 25.00),
(15, 8, 7, 45.00);

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
INNER JOIN Assignments a ON e.EmployeeID = a.EmployeeID
INNER JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
LEFT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Projects p
RIGHT JOIN Assignments a ON p.ProjectID = a.ProjectID
RIGHT JOIN Employees e ON a.EmployeeID = e.EmployeeID
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
LEFT JOIN Projects p ON a.ProjectID = p.ProjectID;


SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Projects p
RIGHT JOIN Assignments a ON p.ProjectID = a.ProjectID
INNER JOIN Employees e ON a.EmployeeID = e.EmployeeID
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
RIGHT JOIN Assignments a ON e.EmployeeID = a.EmployeeID
RIGHT JOIN Projects p ON a.ProjectID = p.ProjectID;

SELECT 
    e.EmployeeID, e.FirstName, e.LastName, e.Email,
    d.DepartmentName,
    p.ProjectName,
    a.HoursWorked
FROM Projects p
RIGHT JOIN Assignments a ON p.ProjectID = a.ProjectID
LEFT JOIN Employees e ON a.EmployeeID = e.EmployeeID
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;


