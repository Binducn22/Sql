CREATE DATABASE task;
USE task;

CREATE TABLE Client (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DateOfBirth DATE NOT NULL
);

INSERT INTO Client (FirstName, LastName, Email, DateOfBirth) VALUES
('John', 'Doe', 'john.doe@example.com', '1985-05-15'),
('Jane', 'Smith', 'jane.smith@example.com', '1990-07-20'),
('Emily', 'Johnson', 'emily.johnson@example.com', '1983-12-30'),
('Michael', 'Brown', 'michael.brown@example.com', '1979-03-12'),
('Emma', 'Davis', 'emma.davis@example.com', '1988-10-05'),
('Olivia', 'Wilson', 'olivia.wilson@example.com', '1992-09-22'),
('Liam', 'Moore', 'liam.moore@example.com', '1980-11-18'),
('Sophia', 'Taylor', 'sophia.taylor@example.com', '1987-02-28'),
('Noah', 'Anderson', 'noah.anderson@example.com', '1995-04-14'),
('Isabella', 'Thomas', 'isabella.thomas@example.com', '1989-06-25');

SELECT * FROM Client
WHERE DateOfBirth BETWEEN '1980-01-01' AND '1990-12-31';

SELECT * FROM Client
WHERE LastName LIKE 'S%';

SELECT * FROM Client
WHERE Email LIKE '%example%';

SELECT * FROM Client
ORDER BY LastName ASC;

SELECT * FROM Client
ORDER BY DateOfBirth DESC;

SELECT 
    ClientID,
    UPPER(LastName) AS UpperLastName,
    LOWER(Email) AS LowerEmail,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    LENGTH(FirstName) AS FirstNameLength
FROM Client;

CREATE INDEX idx_email ON Client(Email);

SELECT * FROM Client
WHERE Email LIKE '%@example.com%';

SHOW INDEX FROM Client;

CREATE TABLE Purchase (
    PurchaseID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT NOT NULL,
    PurchaseDate DATE NOT NULL,
    Amount DECIMAL(10, 2) CHECK (Amount > 0),
    Status VARCHAR(50) NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    UNIQUE (ClientID, PurchaseDate, Status)  
);

INSERT INTO Purchase (ClientID, PurchaseDate, Amount, Status) VALUES
(1, '2024-01-15', 150.00, 'Shipped'),
(2, '2024-01-20', 250.00, 'Pending'),
(3, '2024-02-10', 350.00, 'Completed'),
(4, '2024-03-05', 450.00, 'Cancelled'),
(5, '2024-04-12', 550.00, 'Shipped'),
(6, '2024-05-18', 650.00, 'Pending'),
(7, '2024-06-25', 750.00, 'Completed'),
(8, '2024-07-30', 850.00, 'Shipped'),
(9, '2024-08-15', 950.00, 'Completed'),
(10, '2024-09-22', 1050.00, 'Pending');

SELECT * FROM Purchase
WHERE Amount BETWEEN 200.00 AND 800.00;

SELECT * FROM Purchase
WHERE Status LIKE '%Shi%';

SELECT * FROM Purchase
ORDER BY PurchaseDate ASC;

SELECT * FROM Purchase
ORDER BY Amount DESC;

SELECT 
    PurchaseID,
    ClientID,
    PurchaseDate,
    CONCAT('$', Amount) AS FormattedAmount, 
    UPPER(Status) AS UpperStatus,           
    LENGTH(Status) AS StatusLength          
FROM Purchase;

CREATE INDEX idx_purchase_date_new ON Purchase(PurchaseDate);

SELECT * FROM Purchase
WHERE PurchaseDate BETWEEN '2024-01-01' AND '2024-06-30';

SHOW INDEX FROM Purchase;







