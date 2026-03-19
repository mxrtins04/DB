
-- EKO RIDE SHARING ANALYTICS



CREATE DATABASE IF NOT EXISTS EkoRideSharing;
USE EkoRideSharing;

CREATE TABLE IF NOT EXISTS Drivers (
    DriverID    INT PRIMARY KEY,
    Name        VARCHAR(100) NOT NULL,
    Rating      DECIMAL(3,1),
    TotalRides  INT
);

CREATE TABLE IF NOT EXISTS Riders (
    RiderID INT PRIMARY KEY,
    Name    VARCHAR(100) NOT NULL,
    City    VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS Rides (
    RideID          INT PRIMARY KEY,
    DriverID        INT,
    RiderID         INT,
    Fare            DECIMAL(10,2),
    Rating          DECIMAL(3,1),
    DistanceKM      DECIMAL(6,2),
    RideDate        DATE,
    DurationMinutes INT,
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (RiderID)  REFERENCES Riders(RiderID)
);

CREATE TABLE IF NOT EXISTS Payments (
    PaymentID     INT PRIMARY KEY,
    RideID        INT,
    Amount        DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (RideID) REFERENCES Rides(RideID)
);

INSERT INTO Drivers (DriverID, Name, Rating, TotalRides) VALUES
(1,  'John Doe',              4.5, 120),
(2,  'Jane Smith',            4.2,  90),
(3,  'James Bond',            4.7, 150),
(4,  'Samantha James',        4.3,  80),
(5,  'Michael Brown',         4.0,  60),
(6,  'Nina Williams',         4.6, 200),
(7,  'Chris Johnson',         4.1, 110),
(8,  'Sarah Davis',           4.8, 100),
(9,  'David Lee',             3.9,  70),
(10, 'Emma Green',            4.4, 130),
(11, 'Olumide Adebayo',       4.7, 150),
(12, 'Grace Okafor',          4.3, 140),
(13, 'Julius Adedeji',        4.6, 175),
(14, 'Tolu Olowolagba',       4.2, 105),
(15, 'Fola Akinwunmi',        4.5, 125),
(16, 'Oluwaseun Bello',       4.1, 115),
(17, 'Kayode Ogunleye',       4.8, 180),
(18, 'Chinonso Ifeanyi',      3.8,  85),
(19, 'Oluwafunmilayo Bello',  4.3, 140),
(20, 'Adeola Akin',           4.6, 160);



INSERT INTO Riders (RiderID, Name, City) VALUES
(1,  'Alice Johnson',    'Lekki'),
(2,  'Victor Martins',   'Ikeja'),
(3,  'Funke Bello',      'Victoria Island'),
(4,  'Tunde Adeyemi',    'Surulere'),
(5,  'Grace Olamide',    'Yaba'),
(6,  'Kingsley Obi',     'Lekki'),
(7,  'Folasade Okoro',   'Ikeja'),
(8,  'Emeka Okafor',     'Victoria Island'),
(9,  'Temilade Adedeji', 'Lekki'),
(10, 'Rita Durojaiye',   'Surulere'),
(11, 'Chuka Nwosu',      'Yaba'),
(12, 'Ayotunde Adeleke', 'Ikeja'),
(13, 'Lola Abiola',      'Lekki'),
(14, 'Olumide Bakare',   'Surulere'),
(15, 'Chidera Okonkwo',  'Victoria Island'),
(16, 'Wale Oni',         'Yaba'),
(17, 'Olivia Adebayo',   'Lekki'),
(18, 'Temidayo Alabi',   'Ikeja'),
(19, 'Micheal Ojo',      'Victoria Island'),
(20, 'Tolu Ayinde',      'Surulere'),
(21, 'Grace Williams',   'Lekki'),
(22, 'Olumide Ayodele',  'Ikeja'),
(23, 'James Osundare',   'Yaba'),
(24, 'Chika Okafor',     'Surulere'),
(25, 'Sandra Ogunleye',  'Victoria Island');

INSERT INTO Rides (RideID, DriverID, RiderID, Fare, Rating, DistanceKM, RideDate, DurationMinutes) VALUES
(1,  1,  1,  3000, 4.5, 10, CURDATE() - INTERVAL 29 DAY, 30),
(2,  2,  2,  2500, 4.2,  8, CURDATE() - INTERVAL 28 DAY, 24),
(3,  3,  3,  4500, 4.7, 15, CURDATE() - INTERVAL 27 DAY, 45),
(4,  4,  4,  3500, 4.3, 12, CURDATE() - INTERVAL 26 DAY, 36),
(5,  5,  5,  2000, 4.0,  7, CURDATE() - INTERVAL 25 DAY, 21),
(6,  6,  6,  4000, 4.6, 20, CURDATE() - INTERVAL 24 DAY, 60),
(7,  7,  7,  2800, 4.1,  9, CURDATE() - INTERVAL 23 DAY, 27),
(8,  8,  8,  5000, 4.8, 18, CURDATE() - INTERVAL 22 DAY, 54),
(9,  9,  9,  2200, 3.9,  6, CURDATE() - INTERVAL 21 DAY, 18),
(10, 10, 10, 3700, 4.4, 14, CURDATE() - INTERVAL 20 DAY, 42),
(11, 11, 11, 3900, 4.7, 16, CURDATE() - INTERVAL 19 DAY, 48),
(12, 12, 12, 3600, 4.3, 11, CURDATE() - INTERVAL 18 DAY, 33),
(13, 13, 13, 4200, 4.6, 17, CURDATE() - INTERVAL 17 DAY, 51),
(14, 14, 14, 3300, 4.2, 13, CURDATE() - INTERVAL 16 DAY, 39),
(15, 15, 15, 3800, 4.5, 19, CURDATE() - INTERVAL 15 DAY, 57),
(16, 16, 16, 2500, 4.1,  8, CURDATE() - INTERVAL 14 DAY, 24),
(17, 17, 17, 4800, 4.8, 22, CURDATE() - INTERVAL 13 DAY, 66),
(18, 18, 18, 3100, 3.8, 10, CURDATE() - INTERVAL 12 DAY, 30),
(19, 19, 19, 3300, 4.3, 14, CURDATE() - INTERVAL 11 DAY, 42),
(20, 20, 20, 4600, 4.6, 20, CURDATE() - INTERVAL 10 DAY, 60),
(21, 1,  21, 2900, 4.4, 11, CURDATE() - INTERVAL 9  DAY, 33),
(22, 2,  22, 3200, 4.1, 12, CURDATE() - INTERVAL 8  DAY, 36),
(23, 3,  23, 3400, 4.7, 13, CURDATE() - INTERVAL 7  DAY, 39),
(24, 4,  24, 3100, 4.3,  9, CURDATE() - INTERVAL 6  DAY, 27),
(25, 5,  25, 3600, 4.2, 15, CURDATE() - INTERVAL 5  DAY, 45),
(26, 6,  1,  2800, 4.6, 12, CURDATE() - INTERVAL 4  DAY, 36),
(27, 7,  2,  3500, 4.1, 16, CURDATE() - INTERVAL 3  DAY, 48),
(28, 8,  3,  5000, 4.8, 18, CURDATE() - INTERVAL 2  DAY, 54),
(29, 9,  4,  2300, 3.9,  7, CURDATE() - INTERVAL 1  DAY, 21),
(30, 10, 5,  3800, 4.4, 14, CURDATE()              ,      42),
(31, 11, 6,  4000, 4.7, 20, CURDATE() - INTERVAL 29 DAY, 60),
(32, 12, 7,  3300, 4.3, 13, CURDATE() - INTERVAL 28 DAY, 39),
(33, 13, 8,  4100, 4.6, 17, CURDATE() - INTERVAL 27 DAY, 51),
(34, 14, 9,  3100, 4.2, 11, CURDATE() - INTERVAL 26 DAY, 33),
(35, 15, 10, 4200, 4.5, 19, CURDATE() - INTERVAL 25 DAY, 57),
(36, 16, 11, 2900, 4.1, 12, CURDATE() - INTERVAL 24 DAY, 36),
(37, 17, 12, 4700, 4.8, 21, CURDATE() - INTERVAL 23 DAY, 63),
(38, 18, 13, 3300, 3.8, 10, CURDATE() - INTERVAL 22 DAY, 30),
(39, 19, 14, 3200, 4.3, 14, CURDATE() - INTERVAL 21 DAY, 42),
(40, 20, 15, 4500, 4.6, 20, CURDATE() - INTERVAL 20 DAY, 60),
(41, 1,  16, 3000, 4.5, 12, CURDATE() - INTERVAL 19 DAY, 36),
(42, 2,  17, 2500, 4.2,  9, CURDATE() - INTERVAL 18 DAY, 27),
(43, 3,  18, 4500, 4.7, 15, CURDATE() - INTERVAL 17 DAY, 45),
(44, 4,  19, 3500, 4.3, 13, CURDATE() - INTERVAL 16 DAY, 39),
(45, 5,  20, 2000, 4.0,  7, CURDATE() - INTERVAL 15 DAY, 21),
(46, 6,  21, 4000, 4.6, 20, CURDATE() - INTERVAL 14 DAY, 60),
(47, 7,  22, 2800, 4.1,  8, CURDATE() - INTERVAL 13 DAY, 24),
(48, 8,  23, 5000, 4.8, 18, CURDATE() - INTERVAL 12 DAY, 54),
(49, 9,  24, 2200, 3.9,  6, CURDATE() - INTERVAL 11 DAY, 18),
(50, 10, 25, 3700, 4.4, 14, CURDATE() - INTERVAL 10 DAY, 42);


-- ============================================================
-- INSERT DATA: Payments
-- ============================================================

INSERT INTO Payments (PaymentID, RideID, Amount, PaymentMethod) VALUES
(1,  1,  3000, 'Card'),
(2,  2,  2500, 'Cash'),
(3,  3,  4500, 'Card'),
(4,  4,  3500, 'Mobile Money'),
(5,  5,  2000, 'Cash'),
(6,  6,  4000, 'Card'),
(7,  7,  2800, 'Mobile Money'),
(8,  8,  5000, 'Card'),
(9,  9,  2200, 'Cash'),
(10, 10, 3700, 'Mobile Money'),
(11, 11, 3900, 'Card'),
(12, 12, 3600, 'Cash'),
(13, 13, 4200, 'Mobile Money'),
(14, 14, 3300, 'Card'),
(15, 15, 3800, 'Mobile Money'),
(16, 16, 2500, 'Cash'),
(17, 17, 4800, 'Card'),
(18, 18, 3100, 'Cash'),
(19, 19, 3300, 'Mobile Money'),
(20, 20, 4600, 'Card'),
(21, 21, 2900, 'Cash'),
(22, 22, 3200, 'Card'),
(23, 23, 3400, 'Mobile Money'),
(24, 24, 3100, 'Cash'),
(25, 25, 3600, 'Card'),
(26, 26, 2800, 'Mobile Money'),
(27, 27, 3500, 'Card'),
(28, 28, 5000, 'Cash'),
(29, 29, 2300, 'Mobile Money'),
(30, 30, 3800, 'Card'),
(31, 31, 4000, 'Cash'),
(32, 32, 3300, 'Mobile Money'),
(33, 33, 4100, 'Card'),
(34, 34, 3100, 'Cash'),
(35, 35, 4200, 'Mobile Money'),
(36, 36, 2900, 'Card'),
(37, 37, 4700, 'Cash'),
(38, 38, 3300, 'Mobile Money'),
(39, 39, 3200, 'Card'),
(40, 40, 4500, 'Cash'),
(41, 41, 3000, 'Card'),
(42, 42, 2500, 'Cash'),
(43, 43, 4500, 'Mobile Money'),
(44, 44, 3500, 'Card'),
(45, 45, 2000, 'Cash'),
(46, 46, 4000, 'Card'),
(47, 47, 2800, 'Mobile Money'),
(48, 48, 5000, 'Card'),
(49, 49, 2200, 'Cash'),
(50, 50, 3700, 'Mobile Money');

CREATE TABLE IF NOT EXISTS Result_Top5_Drivers AS
SELECT DriverID, Name, Rating
FROM   Drivers
ORDER  BY Rating DESC
LIMIT  5;

SELECT * FROM Result_Top5_Drivers;

CREATE TABLE IF NOT EXISTS Result_ActiveRiders AS
SELECT   ri.RiderID,
         ri.Name,
         ri.City,
         COUNT(rd.RideID) AS TotalRides
FROM     Riders ri
JOIN     Rides  rd ON ri.RiderID = rd.RiderID
WHERE    rd.RideDate >= CURDATE() - INTERVAL 30 DAY
GROUP BY ri.RiderID, ri.Name, ri.City
HAVING   COUNT(rd.RideID) > 5;

SELECT * FROM Result_ActiveRiders;

CREATE TABLE IF NOT EXISTS Result_TotalRevenue AS
SELECT SUM(p.Amount) AS TotalRevenue
FROM   Payments p
JOIN   Rides    r ON p.RideID = r.RideID
WHERE  r.RideDate >= CURDATE() - INTERVAL 30 DAY;

SELECT * FROM Result_TotalRevenue;


CREATE TABLE IF NOT EXISTS Result_AreaMostRides AS
SELECT   ri.City,
         COUNT(rd.RideID) AS TotalRides
FROM     Riders ri
JOIN     Rides  rd ON ri.RiderID = rd.RiderID
GROUP BY ri.City
ORDER BY TotalRides DESC
LIMIT    1;

SELECT * FROM Result_AreaMostRides;



CREATE TABLE IF NOT EXISTS Result_HighestRevenueDriver AS
SELECT   d.DriverID,
         d.Name,
         SUM(p.Amount) AS TotalRevenue
FROM     Drivers  d
JOIN     Rides    r ON d.DriverID = r.DriverID
JOIN     Payments p ON r.RideID   = p.RideID
GROUP BY d.DriverID, d.Name
ORDER BY TotalRevenue DESC
LIMIT    1;

SELECT * FROM Result_HighestRevenueDriver;


CREATE TABLE IF NOT EXISTS Result_FareOutliers AS
SELECT r.RideID,
       r.Fare,
       avg_table.AvgFare,
       CASE
           WHEN r.Fare > avg_table.AvgFare * 1.5 THEN 'Above 50% of Average'
           ELSE 'Below 50% of Average'
       END AS FareStatus
FROM   Rides r
CROSS JOIN (SELECT AVG(Fare) AS AvgFare FROM Rides) AS avg_table
WHERE  r.Fare > avg_table.AvgFare * 1.5
    OR r.Fare < avg_table.AvgFare * 0.5;

SELECT * FROM Result_FareOutliers;

CREATE TABLE IF NOT EXISTS Result_LowRatingRiders AS
SELECT   ri.RiderID,
         ri.Name,
         AVG(rd.Rating) AS AverageRating
FROM     Riders ri
JOIN     Rides  rd ON ri.RiderID = rd.RiderID
GROUP BY ri.RiderID, ri.Name
HAVING   AVG(rd.Rating) < 3;

SELECT * FROM Result_LowRatingRiders;


CREATE TABLE IF NOT EXISTS Result_TopAreasByFare AS
SELECT   ri.City           AS Area,
         AVG(rd.Fare)      AS AverageFare
FROM     Riders ri
JOIN     Rides  rd ON ri.RiderID = rd.RiderID
GROUP BY ri.City
ORDER BY AverageFare DESC
LIMIT    5;

SELECT * FROM Result_TopAreasByFare;


CREATE TABLE IF NOT EXISTS Result_InactiveDrivers AS
SELECT d.DriverID, d.Name
FROM   Drivers d
WHERE  d.DriverID NOT IN (
    SELECT DISTINCT DriverID
    FROM   Rides
    WHERE  RideDate >= CURDATE() - INTERVAL 30 DAY
);

SELECT * FROM Result_InactiveDrivers;


CREATE TABLE IF NOT EXISTS Result_LongestRides AS
SELECT   RideID, DistanceKM, DriverID, RiderID
FROM     Rides
ORDER BY DistanceKM DESC
LIMIT    5;

SELECT * FROM Result_LongestRides;



CREATE TABLE IF NOT EXISTS Result_DriverRideCount AS
SELECT   DriverID,
         COUNT(RideID) AS TotalRides
FROM     Rides
GROUP BY DriverID
ORDER BY TotalRides DESC;

SELECT * FROM Result_DriverRideCount;

CREATE TABLE IF NOT EXISTS Result_PaymentMethodsHighFare AS
SELECT   p.PaymentMethod,
         COUNT(p.PaymentID) AS NumberOfTransactions
FROM     Payments p
JOIN     Rides    r ON p.RideID = r.RideID
WHERE    r.Fare > 50000        -- Change to 5000 to test with current data
GROUP BY p.PaymentMethod
ORDER BY NumberOfTransactions DESC;

SELECT * FROM Result_PaymentMethodsHighFare;


CREATE TABLE IF NOT EXISTS Result_LongRides AS
SELECT   RideID,
         DurationMinutes  AS Duration,
         DriverID,
         RiderID
FROM     Rides
WHERE    DurationMinutes > 120
ORDER BY DurationMinutes DESC;

SELECT * FROM Result_LongRides;
