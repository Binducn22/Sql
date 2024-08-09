CREATE DATABASE sqlassignment;
USE  sqlassignment;
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    Position VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    BirthDate DATE,
    Nationality VARCHAR(50),
    MaritalStatus VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100),
    ManagerID INT,
    Budget DECIMAL(12, 2),
    EstablishedDate DATE,
    FloorNumber INT,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Website VARCHAR(100)
);

ALTER TABLE Employee
    ADD FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);
    
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactEmail VARCHAR(100),
    ContactPhone VARCHAR(20),
    Address VARCHAR(255),
    JoinDate DATE,
    PreferredContactMethod VARCHAR(20),
    LoyaltyPoints INT,
    AccountStatus VARCHAR(20),
    DateOfBirth DATE
);

CREATE TABLE Order1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(12, 2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    ShippingMethod VARCHAR(50),
    DeliveryDate DATE,
    OrderStatus VARCHAR(20),
    TrackingNumber VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(100),
    Manufacturer VARCHAR(100),
    WarrantyPeriod INT,
    DateAdded DATE,
    Rating DECIMAL(3, 2)
);

CREATE TABLE OrderProduct (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Order1(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    ContactPhone VARCHAR(20),
    ContactEmail VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Country VARCHAR(50),
    JoinDate DATE,
    Rating DECIMAL(3, 2),
    Website VARCHAR(100),
    TaxID VARCHAR(50)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, HireDate, Salary, DepartmentID, Position, PhoneNumber, Address) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2023-01-15', 60000.00, 1, 'Developer', '555-1234', '123 Elm St'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2022-02-20', 65000.00, 2, 'Manager', '555-2345', '456 Oak St'),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '2021-03-10', 55000.00, 1, 'Developer', '555-3456', '789 Pine St'),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '2020-04-25', 70000.00, 3, 'Analyst', '555-4567', '135 Maple St'),
(5, 'Charlie', 'Brown', 'charlie.brown@example.com', '2022-05-30', 62000.00, 2, 'Developer', '555-5678', '246 Cedar St'),
(6, 'Eve', 'Davis', 'eve.davis@example.com', '2021-06-15', 58000.00, 1, 'Developer', '555-6789', '357 Birch St'),
(7, 'Frank', 'Miller', 'frank.miller@example.com', '2020-07-20', 75000.00, 3, 'Manager', '555-7890', '468 Spruce St'),
(8, 'Grace', 'Wilson', 'grace.wilson@example.com', '2023-08-10', 64000.00, 2, 'Developer', '555-8901', '579 Fir St'),
(9, 'Hank', 'Moore', 'hank.moore@example.com', '2022-09-05', 61000.00, 1, 'Developer', '555-9012', '680 Redwood St'),
(10, 'Ivy', 'Taylor', 'ivy.taylor@example.com', '2021-10-12', 67000.00, 2, 'Manager', '555-0123', '791 Ash St'),
(11, 'Jack', 'Anderson', 'jack.anderson@example.com', '2020-11-23', 69000.00, 3, 'Analyst', '555-1235', '902 Elm St'),
(12, 'Kara', 'Thomas', 'kara.thomas@example.com', '2023-12-01', 56000.00, 1, 'Developer', '555-2346', '103 Oak St'),
(13, 'Liam', 'Jackson', 'liam.jackson@example.com', '2022-01-18', 62000.00, 2, 'Developer', '555-3457', '204 Pine St'),
(14, 'Mona', 'White', 'mona.white@example.com', '2021-02-19', 58000.00, 1, 'Developer', '555-4568', '305 Maple St'),
(15, 'Nina', 'Harris', 'nina.harris@example.com', '2020-03-22', 71000.00, 3, 'Manager', '555-5679', '406 Cedar St'),
(16, 'Oscar', 'Martin', 'oscar.martin@example.com', '2023-04-25', 63000.00, 2, 'Developer', '555-6780', '507 Birch St'),
(17, 'Paul', 'Thompson', 'paul.thompson@example.com', '2022-05-15', 59000.00, 1, 'Developer', '555-7891', '608 Spruce St'),
(18, 'Quinn', 'Garcia', 'quinn.garcia@example.com', '2021-06-30', 68000.00, 2, 'Manager', '555-8902', '709 Fir St'),
(19, 'Rita', 'Martinez', 'rita.martinez@example.com', '2020-07-14', 60000.00, 1, 'Developer', '555-9013', '810 Redwood St'),
(20, 'Steve', 'Rodriguez', 'steve.rodriguez@example.com', '2023-08-28', 64000.00, 2, 'Developer', '555-0124', '911 Ash St');


INSERT INTO EmployeeDetails (EmployeeID, BirthDate, Nationality, MaritalStatus) VALUES
(1, '1985-04-12', 'American', 'Single'),
(2, '1982-05-22', 'American', 'Married'),
(3, '1990-08-30', 'Canadian', 'Single'),
(4, '1987-11-14', 'American', 'Married'),
(5, '1989-02-09', 'American', 'Single'),
(6, '1991-07-19', 'Canadian', 'Single'),
(7, '1984-12-07', 'American', 'Married'),
(8, '1988-09-29', 'American', 'Single'),
(9, '1986-10-11', 'Canadian', 'Married'),
(10, '1983-06-21', 'American', 'Married'),
(11, '1992-03-15', 'American', 'Single'),
(12, '1985-08-20', 'American', 'Single'),
(13, '1990-01-11', 'Canadian', 'Married'),
(14, '1984-05-23', 'American', 'Single'),
(15, '1987-12-05', 'American', 'Married'),
(16, '1989-07-16', 'Canadian', 'Single'),
(17, '1991-03-30', 'American', 'Married'),
(18, '1988-10-04', 'Canadian', 'Single'),
(19, '1990-12-18', 'American', 'Single'),
(20, '1985-09-27', 'Canadian', 'Married');

INSERT INTO Department (DepartmentID, DepartmentName, Location, ManagerID, Budget, EstablishedDate, FloorNumber, PhoneNumber, Email, Website) VALUES
(1, 'IT', 'Building A', 101, 500000.00, '2000-05-20', 2, '555-5678', 'it@company.com', 'www.itdepartment.com'),
(2, 'HR', 'Building B', 102, 300000.00, '2001-06-15', 3, '555-6789', 'hr@company.com', 'www.hrdepartment.com'),
(3, 'Finance', 'Building C', 103, 700000.00, '2002-07-10', 4, '555-7890', 'finance@company.com', 'www.financedepartment.com'),
(4, 'Sales', 'Building D', 104, 450000.00, '2003-08-25', 1, '555-8901', 'sales@company.com', 'www.salesdepartment.com'),
(5, 'Marketing', 'Building E', 105, 350000.00, '2004-09-30', 2, '555-9012', 'marketing@company.com', 'www.marketingdepartment.com'),
(6, 'Support', 'Building F', 106, 200000.00, '2005-10-15', 3, '555-0123', 'support@company.com', 'www.supportdepartment.com'),
(7, 'Logistics', 'Building G', 107, 250000.00, '2006-11-20', 4, '555-1234', 'logistics@company.com', 'www.logisticsdepartment.com'),
(8, 'R&D', 'Building H', 108, 600000.00, '2007-12-05', 1, '555-2345', 'rd@company.com', 'www.rddepartment.com'),
(9, 'Legal', 'Building I', 109, 550000.00, '2008-01-10', 2, '555-3456', 'legal@company.com', 'www.legaldepartment.com'),
(10, 'Admin', 'Building J', 110, 400000.00, '2009-02-15', 3, '555-4567', 'admin@company.com', 'www.admindept.com'),
(11, 'Engineering', 'Building K', 111, 650000.00, '2010-03-20', 4, '555-5678', 'engineering@company.com', 'www.engineeringdept.com'),
(12, 'Product Management', 'Building L', 112, 500000.00, '2011-04-25', 1, '555-6789', 'product@company.com', 'www.productmanagement.com'),
(13, 'Quality Assurance', 'Building M', 113, 450000.00, '2012-05-30', 2, '555-7890', 'quality@company.com', 'www.qualityassurance.com'),
(14, 'Customer Service', 'Building N', 114, 300000.00, '2013-06-10', 3, '555-8901', 'customerservice@company.com', 'www.customerservice.com'),
(15, 'Training', 'Building O', 115, 200000.00, '2014-07-15', 4, '555-9012', 'training@company.com', 'www.trainingdepartment.com'),
(16, 'Compliance', 'Building P', 116, 350000.00, '2015-08-20', 1, '555-0123', 'compliance@company.com', 'www.compliancedepartment.com'),
(17, 'Public Relations', 'Building Q', 117, 400000.00, '2016-09-25', 2, '555-1234', 'pr@company.com', 'www.prdepartment.com'),
(18, 'Strategy', 'Building R', 118, 500000.00, '2017-10-30', 3, '555-2345', 'strategy@company.com', 'www.strategydepartment.com'),
(19, 'Business Development', 'Building S', 119, 600000.00, '2018-11-05', 4, '555-3456', 'businessdev@company.com', 'www.businessdevelopment.com'),
(20, 'Operations', 'Building T', 120, 700000.00, '2019-12-10', 1, '555-4567', 'operations@company.com', 'www.operationsdepartment.com');

INSERT INTO Customer (CustomerID, CustomerName, ContactEmail, ContactPhone, Address, JoinDate, PreferredContactMethod, LoyaltyPoints, AccountStatus, DateOfBirth) VALUES
(1, 'Alice Smith', 'alice.smith@example.com', '555-8765', '456 Oak St', '2024-01-10', 'Email', 150, 'Active', '1990-07-21'),
(2, 'Bob Brown', 'bob.brown@example.com', '555-9876', '567 Elm St', '2023-02-15', 'Phone', 200, 'Active', '1988-08-11'),
(3, 'Carol Johnson', 'carol.johnson@example.com', '555-6543', '678 Pine St', '2022-03-20', 'Email', 120, 'Inactive', '1991-09-05'),
(4, 'David Lee', 'david.lee@example.com', '555-5432', '789 Oak St', '2021-04-25', 'Phone', 250, 'Active', '1985-10-15'),
(5, 'Eve White', 'eve.white@example.com', '555-4321', '890 Maple St', '2020-05-30', 'Email', 180, 'Active', '1992-11-20'),
(6, 'Frank Harris', 'frank.harris@example.com', '555-3210', '901 Cedar St', '2019-06-15', 'Phone', 210, 'Inactive', '1987-12-30'),
(7, 'Grace Martinez', 'grace.martinez@example.com', '555-2109', '012 Birch St', '2018-07-20', 'Email', 160, 'Active', '1993-01-25'),
(8, 'Hank King', 'hank.king@example.com', '555-1098', '123 Spruce St', '2017-08-30', 'Phone', 220, 'Active', '1990-02-10'),
(9, 'Ivy Scott', 'ivy.scott@example.com', '555-0987', '234 Fir St', '2016-09-15', 'Email', 190, 'Inactive', '1989-03-05'),
(10, 'Jack Anderson', 'jack.anderson@example.com', '555-9870', '345 Redwood St', '2015-10-25', 'Phone', 250, 'Active', '1988-04-20'),
(11, 'Kara Adams', 'kara.adams@example.com', '555-8764', '456 Elm St', '2024-11-30', 'Email', 230, 'Active', '1992-05-15'),
(12, 'Liam Nelson', 'liam.nelson@example.com', '555-7653', '567 Pine St', '2023-12-01', 'Phone', 190, 'Inactive', '1986-06-25'),
(13, 'Mona Evans', 'mona.evans@example.com', '555-6542', '678 Oak St', '2022-01-10', 'Email', 150, 'Active', '1984-07-10'),
(14, 'Nina Carter', 'nina.carter@example.com', '555-5431', '789 Maple St', '2021-02-15', 'Phone', 170, 'Active', '1990-08-20'),
(15, 'Oscar Green', 'oscar.green@example.com', '555-4320', '890 Cedar St', '2020-03-25', 'Email', 210, 'Inactive', '1985-09-30'),
(16, 'Paul Baker', 'paul.baker@example.com', '555-3219', '901 Birch St', '2019-04-10', 'Phone', 220, 'Active', '1992-10-05'),
(17, 'Quinn Murphy', 'quinn.murphy@example.com', '555-2108', '012 Spruce St', '2018-05-15', 'Email', 200, 'Active', '1991-11-25'),
(18, 'Rita Turner', 'rita.turner@example.com', '555-1097', '123 Fir St', '2017-06-20', 'Phone', 230, 'Inactive', '1989-12-15'),
(19, 'Steve Ward', 'steve.ward@example.com', '555-0986', '234 Redwood St', '2016-07-30', 'Email', 240, 'Active', '1987-01-05'),
(20, 'Tina Stewart', 'tina.stewart@example.com', '555-9876', '345 Elm St', '2015-08-25', 'Phone', 180, 'Inactive', '1993-02-20');

INSERT INTO Order1 (OrderID, CustomerID, OrderDate, OrderAmount, ShippingAddress, PaymentMethod, ShippingMethod, DeliveryDate, OrderStatus, TrackingNumber) VALUES
(1, 1, '2024-08-01', 250.00, '456 Oak St', 'Credit Card', 'Standard', '2024-08-05', 'Shipped', 'TRACK123'),
(2, 2, '2024-08-02', 150.00, '567 Elm St', 'PayPal', 'Express', '2024-08-03', 'Delivered', 'TRACK124'),
(3, 3, '2024-08-03', 300.00, '678 Pine St', 'Credit Card', 'Standard', '2024-08-07', 'Pending', 'TRACK125'),
(4, 4, '2024-08-04', 450.00, '789 Oak St', 'Bank Transfer', 'Standard', '2024-08-10', 'Shipped', 'TRACK126'),
(5, 5, '2024-08-05', 500.00, '890 Maple St', 'Credit Card', 'Express', '2024-08-06', 'Delivered', 'TRACK127'),
(6, 6, '2024-08-06', 600.00, '901 Cedar St', 'PayPal', 'Standard', '2024-08-11', 'Pending', 'TRACK128'),
(7, 7, '2024-08-07', 350.00, '012 Birch St', 'Credit Card', 'Express', '2024-08-08', 'Delivered', 'TRACK129'),
(8, 8, '2024-08-08', 200.00, '123 Spruce St', 'Bank Transfer', 'Standard', '2024-08-12', 'Shipped', 'TRACK130'),
(9, 9, '2024-08-09', 250.00, '234 Fir St', 'Credit Card', 'Standard', '2024-08-14', 'Pending', 'TRACK131'),
(10, 10, '2024-08-10', 300.00, '345 Redwood St', 'PayPal', 'Express', '2024-08-11', 'Delivered', 'TRACK132'),
(11, 11, '2024-08-11', 150.00, '456 Elm St', 'Credit Card', 'Standard', '2024-08-16', 'Shipped', 'TRACK133'),
(12, 12, '2024-08-12', 180.00, '567 Pine St', 'Bank Transfer', 'Express', '2024-08-13', 'Delivered', 'TRACK134'),
(13, 13, '2024-08-13', 220.00, '678 Oak St', 'PayPal', 'Standard', '2024-08-17', 'Pending', 'TRACK135'),
(14, 14, '2024-08-14', 300.00, '789 Maple St', 'Credit Card', 'Express', '2024-08-15', 'Delivered', 'TRACK136'),
(15, 15, '2024-08-15', 350.00, '890 Cedar St', 'Bank Transfer', 'Standard', '2024-08-20', 'Shipped', 'TRACK137'),
(16, 16, '2024-08-16', 400.00, '901 Birch St', 'Credit Card', 'Express', '2024-08-17', 'Delivered', 'TRACK138'),
(17, 17, '2024-08-17', 220.00, '012 Spruce St', 'PayPal', 'Standard', '2024-08-22', 'Pending', 'TRACK139'),
(18, 18, '2024-08-18', 150.00, '123 Fir St', 'Bank Transfer', 'Express', '2024-08-19', 'Delivered', 'TRACK140'),
(19, 19, '2024-08-19', 250.00, '234 Redwood St', 'Credit Card', 'Standard', '2024-08-24', 'Shipped', 'TRACK141'),
(20, 20, '2024-08-20', 500.00, '345 Elm St', 'PayPal', 'Express', '2024-08-21', 'Delivered', 'TRACK142');


INSERT INTO Product (
    ProductID, ProductName, Category, Price, StockQuantity, Supplier,
    Manufacturer, WarrantyPeriod, DateAdded, Rating
) VALUES
    (1, 'Laptop', 'Electronics', 1000.00, 50, 'TechCorp', 'TechCorp', 24, '2024-01-15', 4.5),
    (2, 'Smartphone', 'Electronics', 600.00, 100, 'SmartTech', 'SmartTech', 12, '2024-03-20', 4.7),
    (3, 'Headphones', 'Accessories', 150.00, 200, 'SoundWave', 'SoundWave', 6, '2024-05-10', 4.2),
    (4, 'Monitor', 'Electronics', 300.00, 75, 'VisionTech', 'VisionTech', 36, '2024-02-25', 4.3),
    (5, 'Keyboard', 'Accessories', 80.00, 150, 'KeyTech', 'KeyTech', 12, '2024-06-15', 4.4),
    (6, 'Mouse', 'Accessories', 40.00, 250, 'PointClick', 'PointClick', 12, '2024-07-05', 4.1),
    (7, 'Smartwatch', 'Accessories', 200.00, 120, 'TimeTech', 'TimeTech', 12, '2024-04-30', 4.6),
    (8, 'Router', 'Electronics', 120.00, 90, 'NetStream', 'NetStream', 24, '2024-08-01', 4.0),
    (9, 'Tablet', 'Electronics', 500.00, 60, 'TabTech', 'TabTech', 24, '2024-09-10', 4.5),
    (10, 'Printer', 'Accessories', 150.00, 85, 'PrintMaster', 'PrintMaster', 36, '2024-05-01', 4.3),
    (11, 'Camera', 'Electronics', 800.00, 40, 'PhotoPro', 'PhotoPro', 24, '2024-03-15', 4.6),
    (12, 'Charger', 'Accessories', 30.00, 300, 'ChargeTech', 'ChargeTech', 6, '2024-06-25', 4.2),
    (13, 'External Hard Drive', 'Electronics', 120.00, 70, 'StorePlus', 'StorePlus', 24, '2024-07-15', 4.4),
    (14, 'Webcam', 'Accessories', 90.00, 150, 'WebStream', 'WebStream', 12, '2024-05-20', 4.3),
    (15, 'Docking Station', 'Accessories', 150.00, 80, 'DockTech', 'DockTech', 24, '2024-08-05', 4.5),
    (16, 'Speaker', 'Accessories', 120.00, 100, 'SoundBlast', 'SoundBlast', 12, '2024-04-25', 4.2),
    (17, 'Projector', 'Electronics', 500.00, 30, 'ProjecTech', 'ProjecTech', 36, '2024-09-05', 4.4),
    (18, 'VR Headset', 'Accessories', 300.00, 60, 'VirtualVision', 'VirtualVision', 12, '2024-10-15', 4.6),
    (19, 'Smart Home Hub', 'Electronics', 200.00, 80, 'HomeTech', 'HomeTech', 24, '2024-11-01', 4.5),
    (20, 'Digital Pen', 'Accessories', 50.00, 180, 'PenTech', 'PenTech', 12, '2024-12-05', 4.3);


INSERT INTO OrderProduct (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 1),
(2, 4, 1),
(2, 5, 2),
(2, 6, 1),
(3, 7, 3),
(3, 8, 2),
(3, 9, 1),
(4, 10, 2),
(4, 11, 1),
(5, 12, 2),
(5, 13, 1),
(6, 14, 1),
(6, 15, 3),
(7, 16, 2),
(7, 17, 1),
(8, 18, 2),
(8, 19, 1),
(9, 20, 3),
(10, 1, 2);

INSERT INTO Supplier (SupplierID, SupplierName, ContactName, ContactPhone, ContactEmail, Address, City, State, ZipCode, Country, JoinDate, Rating, Website, TaxID) VALUES
(1, 'TechCorp', 'John Doe', '555-1001', 'contact@techcorp.com', '100 Tech St', 'Tech City', 'CA', '90001', 'USA', '2024-01-01', 4.5, 'www.techcorp.com', 'TC123456789'),
(2, 'SmartTech', 'Jane Smith', '555-1002', 'info@smarttech.com', '200 Smart Ave', 'Smart Town', 'NY', '10001', 'USA', '2024-02-01', 4.6, 'www.smarttech.com', 'ST987654321'),
(3, 'SoundWave', 'Jim Brown', '555-1003', 'support@soundwave.com', '300 Sound Rd', 'Wave City', 'TX', '75001', 'USA', '2024-03-01', 4.7, 'www.soundwave.com', 'SW123456789'),
(4, 'VisionTech', 'Lucy Green', '555-1004', 'sales@visiontech.com', '400 Vision Blvd', 'Viewtown', 'FL', '33101', 'USA', '2024-04-01', 4.4, 'www.visiontech.com', 'VT987654321'),
(5, 'KeyTech', 'Michael White', '555-1005', 'contact@keytech.com', '500 Key St', 'Key City', 'WA', '98001', 'USA', '2024-05-01', 4.3, 'www.keytech.com', 'KT123456789'),
(6, 'PointClick', 'Emily Davis', '555-1006', 'service@pointclick.com', '600 Point Pl', 'Clickville', 'IL', '60601', 'USA', '2024-06-01', 4.5, 'www.pointclick.com', 'PC987654321'),
(7, 'TimeTech', 'Daniel Harris', '555-1007', 'info@timetech.com', '700 Time St', 'Time City', 'MA', '02101', 'USA', '2024-07-01', 4.6, 'www.timetech.com', 'TT123456789'),
(8, 'NetStream', 'Sarah Johnson', '555-1008', 'support@netstream.com', '800 Net Ave', 'Streamtown', 'CO', '80201', 'USA', '2024-08-01', 4.4, 'www.netstream.com', 'NS987654321'),
(9, 'TabTech', 'David Wilson', '555-1009', 'sales@tabtech.com', '900 Tab Rd', 'Tab City', 'OR', '97001', 'USA', '2024-09-01', 4.3, 'www.tabtech.com', 'TT123456789'),
(10, 'PrintMaster', 'Jessica Lee', '555-1010', 'contact@printmaster.com', '1000 Print Ln', 'Printtown', 'AZ', '85001', 'USA', '2024-10-01', 4.2, 'www.printmaster.com', 'PM987654321'),
(11, 'PhotoPro', 'William Martinez', '555-1011', 'info@photopro.com', '1100 Photo Blvd', 'Photoville', 'NV', '89001', 'USA', '2024-11-01', 4.7, 'www.photopro.com', 'PP123456789'),
(12, 'ChargeTech', 'Olivia Brown', '555-1012', 'support@chargetech.com', '1200 Charge St', 'Charge City', 'MI', '48201', 'USA', '2024-12-01', 4.5, 'www.chargetech.com', 'CT987654321'),
(13, 'StorePlus', 'James Clark', '555-1013', 'info@storeplus.com', '1300 Store Rd', 'Store City', 'GA', '30301', 'USA', '2024-01-10', 4.4, 'www.storeplus.com', 'SP123456789'),
(14, 'WebStream', 'Emily Taylor', '555-1014', 'sales@webstream.com', '1400 Web Ave', 'Streamville', 'TN', '37201', 'USA', '2024-02-10', 4.6, 'www.webstream.com', 'WS987654321'),
(15, 'DockTech', 'Alexander Wilson', '555-1015', 'contact@docktech.com', '1500 Dock St', 'Dock City', 'NC', '27501', 'USA', '2024-03-10', 4.3, 'www.docktech.com', 'DT123456789'),
(16, 'SoundBlast', 'Sophia Adams', '555-1016', 'support@soundblast.com', '1600 Sound Blvd', 'Blastville', 'OH', '44101', 'USA', '2024-04-10', 4.4, 'www.soundblast.com', 'SB987654321'),
(17, 'ProjecTech', 'Liam Baker', '555-1017', 'info@projec-tech.com', '1700 Projector Ln', 'Projec Town', 'MO', '63101', 'USA', '2024-05-10', 4.6, 'www.projec-tech.com', 'PT123456789'),
(18, 'VirtualVision', 'Ava Roberts', '555-1018', 'contact@virtualvision.com', '1800 VR St', 'Virtual City', 'PA', '19101', 'USA', '2024-06-10', 4.5, 'www.virtualvision.com', 'VV987654321'),
(19, 'HomeTech', 'Mason Lee', '555-1019', 'info@hometech.com', '1900 Home Rd', 'Home Town', 'VA', '23201', 'USA', '2024-07-10', 4.4, 'www.hometech.com', 'HT123456789'),
(20, 'PenTech', 'Isabella Martinez', '555-1020', 'sales@pentech.com', '2000 Pen Blvd', 'Pen City', 'AL', '35201', 'USA', '2024-08-10', 4.6, 'www.pentech.com', 'PT987654321');

UPDATE Employee
SET Salary = CASE
    WHEN Position = 'Manager' THEN Salary * 1.10
    WHEN Position = 'Developer' THEN Salary * 1.05
    ELSE Salary
END;

SELECT * FROM Employee
ORDER BY EmployeeID
LIMIT 5 OFFSET 10;

SELECT Position, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Position
HAVING AVG(Salary) < 60000;

SELECT * FROM Employee
ORDER BY Salary DESC;

SELECT * FROM Employee
ORDER BY HireDate ASC;



