-- -------------------------------- ULTIMATE TASK -------------------------------------------------
CREATE DATABASE VehicleData;
USE VehicleData;

-- Members Table
CREATE TABLE Members (
    Member_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Member_Location VARCHAR(20),
    Member_Age INT
);

-- Vehicles Table
CREATE TABLE Vehicles (
    Vehicle_Registration VARCHAR(10) PRIMARY KEY,
    Vehicle_Make VARCHAR(10),
    Vehicle_Model VARCHAR(10),
    Member_ID INT,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);

-- Engineers Table
CREATE TABLE Engineers (
    Engineer_ID INT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20)
);

-- Breakdowns Table
CREATE TABLE Breakdowns (
    Breakdown_ID INT PRIMARY KEY,
    Vehicle_Registration VARCHAR(10),
    Engineer_ID INT,
    Breakdown_Date DATE,
    Breakdown_Time TIME,
    Breakdown_Location VARCHAR(20),
    FOREIGN KEY (Vehicle_Registration) REFERENCES Vehicles(Vehicle_Registration),
    FOREIGN KEY (Engineer_ID) REFERENCES Engineers(Engineer_ID)
);


INSERT INTO Members (Member_ID, First_Name, Last_Name, Member_Location, Member_Age) VALUES
(1, 'John', 'Doe', 'New York', 32),
(2, 'Jane', 'Smith', 'Los Angeles', 27),
(3, 'Mark', 'Jones', 'Chicago', 45),
(4, 'Emily', 'Davis', 'Houston', 30),
(5, 'Luke', 'Brown', 'Phoenix', 38),
(6, 'Sophia', 'White', 'Dallas', 29),
(7, 'Liam', 'Taylor', 'Miami', 41),
(8, 'Olivia', 'Green', 'San Diego', 36),
(9, 'James', 'Harris', 'Denver', 33),
(10, 'Mia', 'Robinson', 'Atlanta', 25);

INSERT INTO Vehicles (Vehicle_Registration, Vehicle_Make, Vehicle_Model, Member_ID) VALUES
('ABC1234', 'Toyota', 'Corolla', 1),
('XYZ5678', 'Ford', 'Mustang', 2),
('DEF1111', 'Honda', 'Civic', 3),
('GHI2222', 'Chevy', 'Cruze', 4),
('JKL3333', 'BMW', 'X5', 5),
('MNO4444', 'Audi', 'A4', 1),
('PQR5555', 'Mercedes', 'C300', 2),
('STU6666', 'Nissan', 'Altima', 3),
('VWX7777', 'Hyundai', 'Elantra', 6),
('YZA8888', 'Tesla', 'Model S', 7),
('BCD9999', 'Kia', 'Sportage', 8),
('EFG1112', 'Subaru', 'Forester', 9),
('HIJ1212', 'Jeep', 'Wrangler', 10),
('KLM1414', 'Mazda', 'CX-5', 4),
('NOP1515', 'Honda', 'Accord', 5),
('QRS1616', 'Chervy', 'Malibu', 6),
('TUV1717', 'Nissan', 'Sentra', 7),
('WXY1818', 'Ford', 'Explorer', 8),
('ZAB1919', 'Volvo', 'XC90', 9),
('CDE2020', 'Lexus', 'RX350', 10);

INSERT INTO Engineers (Engineer_ID, First_Name, Last_Name) VALUES
(1, 'Ethan', 'Williams'),
(2, 'Olivia', 'Miller'),
(3, 'Sophia', 'Clark'),
(4, 'Noah', 'Walker');

INSERT INTO Breakdowns (Breakdown_ID, Vehicle_Registration, Engineer_ID, Breakdown_Date, Breakdown_Time, Breakdown_Location) VALUES
(1, 'ABC1234', 1, '2024-09-10', '10:30:00', 'New York'),
(2, 'XYZ5678', 2, '2024-09-10', '11:00:00', 'Los Angeles'),
(3, 'DEF1111', 3, '2024-09-10', '12:30:00', 'Chicago'),
(4, 'GHI2222', 4, '2024-09-15', '14:00:00', 'Houston'),
(5, 'JKL3333', 1, '2024-09-18', '09:45:00', 'Phoenix'),
(6, 'MNO4444', 2, '2024-09-25', '08:20:00', 'New York'),
(7, 'PQR5555', 3, '2024-09-28', '11:15:00', 'Los Angeles'),
(8, 'STU6666', 4, '2024-09-30', '15:30:00', 'Chicago'),
(9, 'ABC1234', 2, '2024-10-10', '09:30:00', 'New York'),
(10, 'XYZ5678', 3, '2024-10-15', '13:30:00', 'Los Angeles'),
(11, 'DEF1111', 4, '2024-10-20', '14:45:00', 'Chicago'),
(12, 'MNO4444', 1, '2024-10-22', '16:20:00', 'New York'),
(13, 'JKL3333', 2, '2024-10-25', '17:00:00', 'Phoenix'),
(14, 'VWX7777', 3, '2024-11-01', '08:00:00', 'Dallas'),
(15, 'YZA8888', 4, '2024-11-05', '09:00:00', 'Miami'),
(16, 'BCD9999', 1, '2024-11-10', '10:30:00', 'San Diego'),
(17, 'EFG1112', 2, '2024-11-15', '14:00:00', 'Denver'),
(18, 'HIJ1212', 3, '2024-11-18', '11:00:00', 'Atlanta'),
(19, 'KLM1414', 4, '2024-11-20', '15:45:00', 'Houston'),
(20, 'NOP1515', 1, '2024-11-25', '16:30:00', 'Phoenix');

-- Task 3.1 Retrieve the first 5 members from the Member table.
SELECT * FROM Members LIMIT 5;

-- tASK 3.2 Retrieve 5 members starting from the 6th row. 
SELECT * FROM Members LIMIT 5 OFFSET 5;

-- Task 3.3  List members who are older than 30 years. 
SELECT * FROM Members WHERE Member_Age > 30;

-- Task 3.4 Find members who live in either New York or Los Angeles. 
SELECT * FROM Members WHERE Member_Location IN ('New York', 'Los Angeles');

-- Task 3.5 Retrieve all vehicles where the make is either 'Toyota' or 'Honda'. 
SELECT * FROM Vehicles WHERE Vehicle_Make IN ('Toyota', 'Honda');

-- Task 3.6 Find members whose age is between 25 and 40 years.
SELECT * FROM Members WHERE Member_Age BETWEEN 25 AND 40;

-- Task 3.7 List vehicles whose registration number starts with the letter 'A'. 
SELECT * FROM Vehicles WHERE Vehicle_Registration LIKE 'A%';

-- Task 3.8 Find vehicles where the model ends with the number '5
SELECT * FROM Vehicles WHERE Vehicle_Model LIKE '%5';

-- Task 3.9 List all engineers and order them alphabetically by their last name.
SELECT * FROM Engineers ORDER BY Last_Name ASC;

-- Task 3.10 Retrieve all members and order them by age in descending order.
SELECT * FROM Members ORDER BY Member_Age DESC;

-- Task 3.11 Count the total number of members in the Member table. 
SELECT COUNT(*) FROM Members;

-- Task 3.12 Retrieve all breakdowns that occurred in the year 2024.
SELECT * FROM Breakdowns WHERE Year(Breakdown_Date) = 2024;

-- Task 3.13 Find breakdowns for vehicles with the registration 'ABC1234' or 'XYZ5678'.
SELECT * FROM Breakdowns WHERE Vehicle_Registration IN ('ABC1234', 'XYZ5678');

-- Task 3.14 List all vehicles with the make 'Ford'.
SELECT * FROM Vehicles WHERE Vehicle_Make IN ('Ford');

-- Task 3.15  Find members whose first name starts with the letter 'J'. 
SELECT * FROM Members WHERE First_Name LIKE 'J%';

-- Task 3.16  Retrieve breakdowns that occurred before September 1, 2024.
SELECT * FROM Breakdowns WHERE Breakdown_Date < '2024-09-01';

 -- Task 3.17 List members whose last name contains 'son'.
 SELECT * FROM Members WHERE Last_Name LIKE '%son%';
 
  -- Task 3.18 Find breakdowns that occurred in locations containing 'New'.
   SELECT * FROM Breakdowns WHERE Breakdown_Location LIKE '%New%';
   
-- Task 3.19 Retrieve the youngest member in the Member table.
 SELECT * FROM Members ORDER BY Member_Age ASC LIMIT 1;
 
 -- Task 3.20  Retrieve the oldest member in the Member table. 
  SELECT * FROM Members ORDER BY Member_Age DESC LIMIT 1;
  
   -- Task 3.21  Find vehicles owned by members who live in Los Angeles. 
-- REMINDING MYSELF HOW TO DO JOINS: SELECT column1 (from first table), column2 (from second table) FROM (first table) INNER JOIN (second table) ON (table1.column_name) = (table2.column_name);
-- Primary and foreign key at end don't forget 
 SELECT CONCAT(Members.First_Name, ' ', Members.Last_Name) AS 'Member Names', Vehicle_Make FROM Vehicles INNER JOIN Members ON (Vehicles.Member_ID) = (Members.Member_ID); 
 
	-- Task 3.22  Retrieve all breakdowns handled by engineer with ID 1.
    SELECT CONCAT(Engineers.First_Name, ' ', Engineers.Last_Name) AS 'Engineer Name', Breakdowns.Engineer_ID, Breakdowns.Breakdown_Date FROM Engineers INNER JOIN (Breakdowns) ON Breakdowns.Engineer_ID = Engineers.Engineer_ID WHERE Breakdowns.Engineer_ID = 1;
    -- OR (because I think i misunderstood the task)
    SELECT * FROM Breakdowns WHERE Engineer_ID = 1;
    
	-- Task 3.23  List all members who are younger than 35 years. 
    SELECT * FROM Members WHERE Member_Age < 35;
    
    -- Task 3.24 Find members who live in either Phoenix or Houston. 
     SELECT Member_location FROM Members WHERE Member_Location IN ('Phoenix', 'Houston');
     
     -- Task 3.25  Retrieve vehicles where the model is either 'Civic' or 'Mustang'. 
     SELECT * FROM Vehicles WHERE Vehicle_Model IN ('Civic', 'Mustang');
     
     -- Task 3.26  List members whose first name contains the letter 'a'.
     SELECT CONCAT(First_Name, ' ', Last_Name) as 'Member Names' FROM Members WHERE First_Name LIKE '%a%';
    
	-- Task 3.27  Retrieve breakdowns that occurred between August 1, 2024, and August 31, 2024.
	SELECT * FROM Breakdowns WHERE Date(Breakdown_Date) BETWEEN '2024-08-1' AND '2024-08-31';
    
	-- Task 3.28 Find members whose age is not between 20 and 40 years.
    SELECT * FROM Members WHERE Member_Age NOT BETWEEN 20 AND 40;
    
    -- Task 3.29 List breakdowns that occurred after October 1, 2024.
    Select * From Breakdowns WHERE Date(Breakdown_Date) > '2024-09-1';
    
    -- Task 3.30. Retrieve the top 3 oldest members from the Member table.
    Select * From Members ORDER BY Member_Age DESC LIMIT 3;
    
-- MEDIUM LEVEL TASKS --
	-- 1. Count the number of breakdowns for each vehicle. 
    Select Vehicle_Registration, COUNT(Breakdown_ID) AS 'Number Of Breakdowns' From Breakdowns GROUP BY Vehicle_Registration;
    
        -- -- - -- Re-look at this --
        
    -- 2. Find members who own more than one vehicle. 
    -- REMINDING MYSELF HOW TO DO JOINS: SELECT column1 (from first table), column2 (from second table) FROM (first table) INNER JOIN (second table) ON (table1.column_name) = (table2.column_name);
-- Primary and foreign key at end don't forget 
	Select CONCAT(Members.First_Name, ' ', Members.Last_Name) AS 'Names', COUNT(Vehicles.Vehicle_Make) AS 'Numbers of Vehicles' From Vehicles INNER JOIN Members ON Vehicles.Member_ID = Members.Member_ID GROUP BY Members.Member_ID, Members.First_Name, Members.Last_Name HAVING  COUNT(Vehicles.Vehicle_Registration) > 1;
    

-- 3. Retrieve the total number of breakdowns handled by each engineer.
SELECT Engineers.Engineer_ID, CONCAT(Engineers.First_Name, ' ', Engineers.Last_Name) AS Engineer_Name, COUNT(Breakdowns.Breakdown_ID) AS Number_of_Breakdowns FROM Engineers
INNER JOIN Breakdowns ON Engineers.Engineer_ID = Breakdowns.Engineer_ID GROUP BY Engineers.Engineer_ID, Engineers.First_Name, Engineers.Last_Name ORDER BY Number_of_Breakdowns DESC;

-- 4. Group breakdowns by location and sort them by the total number of breakdowns in each location. 

SELECT Breakdown_Location, COUNT(Breakdown_ID) AS Number_of_Breakdowns FROM Breakdowns GROUP BY Breakdown_Location ORDER BY Number_of_Breakdowns DESC;

-- 5. List vehicles owned by members who are younger than 30 years. 
SELECT Vehicles.Vehicle_Registration, Vehicles.Vehicle_Make, Vehicles.Vehicle_Model, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name, Members.Member_Age FROM  Members INNER JOIN  Vehicles ON Members.Member_ID = Vehicles.Member_ID WHERE Members.Member_Age < 30;

-- 6. Retrieve all breakdowns and sort them by time in descending order.
SELECT Breakdown_ID, Vehicle_Registration, Engineer_ID, Breakdown_Date, Breakdown_Time, Breakdown_Location FROM  Breakdowns ORDER BY Breakdown_Time DESC;

-- 7. Find all breakdowns for vehicles owned by members who live in New York.
SELECT Breakdowns.Breakdown_ID, Breakdowns.Vehicle_Registration, Breakdowns.Breakdown_Date, Breakdowns.Breakdown_Time, Breakdowns.Breakdown_Location, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name FROM Members INNER JOIN Vehicles ON Members.Member_ID = Vehicles.Member_ID INNER JOIN  Breakdowns ON  Vehicles.Vehicle_Registration = Breakdowns.Vehicle_Registration WHERE Members.Member_Location = 'New York';

-- 8. Retrieve members who do not own any vehicles.
SELECT 
    Members.Member_ID, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name, Members.Member_Location, Members.Member_Age FROM Members LEFT JOIN Vehicles ON Members.Member_ID = Vehicles.Member_ID WHERE Vehicles.Vehicle_Registration IS NULL;
    
-- 9. Find breakdowns that occurred in the same city where the vehicle owner resides.
SELECT Breakdowns.Breakdown_ID, Breakdowns.Vehicle_Registration, Breakdowns.Breakdown_Date, Breakdowns.Breakdown_Time, Breakdowns.Breakdown_Location, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name, Members.Member_Location FROM Members INNER JOIN Vehicles ON Members.Member_ID = Vehicles.Member_ID INNER JOIN Breakdowns ON Vehicles.Vehicle_Registration = Breakdowns.Vehicle_Registration WHERE Breakdowns.Breakdown_Location = Members.Member_Location;

-- 10. Retrieve the total number of breakdowns handled by each engineer during 2024.

SELECT Engineers.Engineer_ID, CONCAT(Engineers.First_Name, ' ', Engineers.Last_Name) AS Engineer_Name, COUNT(Breakdowns.Breakdown_ID) AS Total_Breakdowns FROM Engineers INNER JOIN Breakdowns ON Engineers.Engineer_ID = Breakdowns.Engineer_ID WHERE YEAR(Breakdowns.Breakdown_Date) = 2024 GROUP BY Engineers.Engineer_ID, Engineer_Name ORDER BY Total_Breakdowns DESC;

-- Difficult Tasks 
-- 1. Retrieve a list of members along with their vehicles using a join.
SELECT Members.Member_ID, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name, Members.Member_Location, Members.Member_Age, Vehicles.Vehicle_Registration, Vehicles.Vehicle_Make, Vehicles.Vehicle_Model FROM Members INNER JOIN Vehicles ON Members.Member_ID = Vehicles.Member_ID;

-- 2. Retrieve breakdown details along with the respective member details using a join.
SELECT Breakdowns.Breakdown_ID, Breakdowns.Vehicle_Registration, Breakdowns.Breakdown_Date, Breakdowns.Breakdown_Time, Breakdowns.Breakdown_Location, CONCAT(Members.First_Name, ' ', Members.Last_Name) AS Member_Name, Members.Member_Location, Members.Member_Age FROM Breakdowns INNER JOIN Vehicles ON Breakdowns.Vehicle_Registration = Vehicles.Vehicle_Registration INNER JOIN Members ON Vehicles.Member_ID = Members.Member_ID;