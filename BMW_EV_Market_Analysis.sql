CREATE DATABASE BMW_EV_Market_Analysis;

USE BMW_EV_Market_Analysis;

CREATE TABLE BMW_Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    Year INT,
    Region NVARCHAR(50),
    Vehicle_Type NVARCHAR(20),  -- 'Electric' or 'Non-Electric'
    Model NVARCHAR(50),
    Sales INT
);

INSERT INTO BMW_Sales (Year, Region, Vehicle_Type, Model, Sales)
VALUES
(2022, 'North America', 'Electric', 'i4', 1500),
(2022, 'Europe', 'Electric', 'iX3', 2200),
(2023, 'Asia', 'Electric', 'iX', 1800),
(2023, 'North America', 'Non-Electric', '3 Series', 5000);


INSERT INTO BMW_Sales (Year, Region, Vehicle_Type, Model, Sales)
VALUES
-- Electric Vehicles
(2022, 'North America', 'Electric', 'i4', 1500),
(2022, 'Europe', 'Electric', 'iX3', 2200),
(2023, 'Asia', 'Electric', 'iX', 1800),
(2023, 'North America', 'Electric', 'iX3', 2500),
(2023, 'Europe', 'Electric', 'i7', 1700),
(2023, 'Asia', 'Electric', 'i4', 2300),
-- Non-Electric Vehicles
(2022, 'North America', 'Non-Electric', '3 Series', 4000),
(2023, 'North America', 'Non-Electric', 'X5', 5200),
(2022, 'Europe', 'Non-Electric', '5 Series', 3100),
(2023, 'Asia', 'Non-Electric', '7 Series', 4500),
(2022, 'Europe', 'Non-Electric', 'X3', 2900);


========================================================
CREATE TABLE BMW_EVs (
    EV_ID INT PRIMARY KEY IDENTITY(1,1),
    Model NVARCHAR(50),
    Customer_Satisfaction DECIMAL(3,2),  -- Range from 0.00 to 5.00
    Price DECIMAL(10, 2),                -- Price in USD
    Range_KM INT,                        -- EV range in kilometers
    Battery_Capacity_KWh DECIMAL(5, 2),  -- Battery capacity in kWh
    Sales INT
);

INSERT INTO BMW_EVs (Model, Customer_Satisfaction, Price, Range_KM, Battery_Capacity_KWh, Sales)
VALUES
('i4', 4.5, 55000.00, 590, 80.0, 1500),
('iX3', 4.3, 65000.00, 460, 74.0, 2200),
('iX', 4.6, 85000.00, 630, 100.0, 1800);

INSERT INTO BMW_EVs (Model, Customer_Satisfaction, Price, Range_KM, Battery_Capacity_KWh, Sales)
VALUES
('i4', 4.5, 55000.00, 590, 80.0, 1500),
('iX3', 4.3, 65000.00, 460, 74.0, 2200),
('iX', 4.6, 85000.00, 630, 100.0, 1800),
('i7', 4.8, 100000.00, 500, 120.0, 1700),
('i4', 4.7, 55000.00, 590, 80.0, 2300),
('i3', 4.2, 45000.00, 350, 60.0, 1900),
('iX1', 4.4, 65000.00, 480, 70.0, 2200);

================================================================

CREATE TABLE Competitor_EVs (
    Competitor_ID INT PRIMARY KEY IDENTITY(1,1),
    Competitor NVARCHAR(50),   -- e.g., 'Tesla', 'Audi'
    Model NVARCHAR(50),
    Year INT,
    Region NVARCHAR(50),
    Sales INT
);

INSERT INTO Competitor_EVs (Competitor, Model, Year, Region, Sales)
VALUES
('Tesla', 'Model 3', 2022, 'North America', 7000),
('Tesla', 'Model S', 2023, 'Europe', 5000),
('Audi', 'e-tron', 2023, 'Asia', 3000);

INSERT INTO Competitor_EVs (Competitor, Model, Year, Region, Sales)
VALUES
('Tesla', 'Model 3', 2022, 'North America', 7000),
('Tesla', 'Model S', 2023, 'Europe', 5000),
('Tesla', 'Model Y', 2023, 'Asia', 5500),
('Audi', 'e-tron', 2023, 'Asia', 3000),
('Audi', 'Q4 e-tron', 2023, 'North America', 2700),
('Mercedes', 'EQC', 2022, 'Europe', 3500),
('Mercedes', 'EQS', 2023, 'North America', 4000),
('Nissan', 'Leaf', 2022, 'Asia', 4800),
('Hyundai', 'Ioniq 5', 2023, 'North America', 4300);


==============================================

CREATE TABLE Potential_Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Region NVARCHAR(50),
    Age INT,
    Interest NVARCHAR(50),  -- e.g., 'Electric Vehicles'
);

INSERT INTO Potential_Customers (Region, Age, Interest)
VALUES
('North America', 30, 'Electric Vehicles'),
('Europe', 45, 'Electric Vehicles'),
('Asia', 35, 'Electric Vehicles');

INSERT INTO Potential_Customers (Region, Age, Interest)
VALUES
('North America', 30, 'Electric Vehicles'),
('Europe', 45, 'Electric Vehicles'),
('Asia', 35, 'Electric Vehicles'),
('North America', 28, 'Electric Vehicles'),
('Europe', 38, 'Electric Vehicles'),
('Asia', 42, 'Electric Vehicles'),
('North America', 33, 'Electric Vehicles'),
('Europe', 50, 'Electric Vehicles'),
('Asia', 29, 'Electric Vehicles');

select * from Potential_Customers

==========================================================

==== 1. Sales Performance Analysis:

---- How have BMW's electric vehicle (EV) sales trended over time (year-by-year)? 

SELECT Year, SUM(Sales) AS Total_EV_Sales
FROM BMW_Sales
WHERE Vehicle_Type = 'Electric'
GROUP BY Year
ORDER BY Year ASC;

---- 2. Which regions are contributing the most to BMW's electric vehicle (EV) sales?

SELECT Region, SUM(Sales) AS Total_EV_Sales
FROM BMW_Sales
WHERE Vehicle_Type = 'Electric'
GROUP BY Region
ORDER BY Total_EV_Sales DESC;

---- 3. Which BMW electric vehicle (EV) models are performing the best across different regions?

SELECT Region, Model, SUM(Sales) AS Total_Sales
FROM BMW_Sales
WHERE Vehicle_Type = 'Electric'
GROUP BY Region, Model
ORDER BY Region, Total_Sales DESC;

====== 2. Customer Preferences Analysis:

---- 1. How do customer satisfaction ratings vary for different BMW EV models, and which features (price, range, battery capacity) are most valued by customers?

SELECT Model, AVG(Customer_Satisfaction) AS Avg_Satisfaction, 
AVG(Price) AS Avg_Price, AVG(Range_KM) AS Avg_Range, AVG(Battery_Capacity_KWh) AS Avg_Battery_Capacity
FROM BMW_EVs
GROUP BY Model
ORDER BY Avg_Satisfaction DESC;

---- 2. How does pricing impact customer satisfaction and sales volume for BMW’s electric vehicle (EV) models? 

SELECT Model, AVG(Price) AS Avg_Price, AVG(Customer_Satisfaction) AS Avg_Satisfaction, SUM(Sales) AS Total_Sales
FROM BMW_EVs
GROUP BY Model
ORDER BY Avg_Price DESC;

==== 3. Competitor Benchmarking:

---- 1. How do BMW's electric vehicle (EV) sales compare to those of its competitors (e.g., Tesla, Audi, and Mercedes) in various regions? 

SELECT c.Region, c.Competitor, 
SUM(c.Sales) AS Competitor_Sales, 
(SELECT SUM(b.Sales) 
FROM BMW_Sales b
WHERE b.Region = c.Region AND b.Vehicle_Type = 'Electric') AS BMW_Sales
FROM Competitor_EVs c
WHERE c.Competitor IN ('Tesla', 'Audi', 'Mercedes')
GROUP BY c.Region, c.Competitor
ORDER BY c.Region, Competitor_Sales DESC;

---- 2 . In which regions is BMW underperforming compared to its competitors, and what factors may be contributing to its lag in market share? 

SELECT 
    c.Region, 
    SUM(b.Sales) AS BMW_Sales, 
    SUM(c.Sales) AS Competitor_Sales, 
    (SUM(c.Sales) - SUM(b.Sales)) AS Sales_Lag,
    (SUM(b.Sales) * 100.0 / SUM(c.Sales)) AS BMW_Market_Share_Percentage
FROM Competitor_EVs c
LEFT JOIN BMW_Sales b ON c.Region = b.Region AND b.Vehicle_Type = 'Electric'
WHERE c.Competitor IN ('Tesla', 'Audi', 'Mercedes')
GROUP BY c.Region
HAVING SUM(b.Sales) < SUM(c.Sales)  -- BMW underperforming in these regions
ORDER BY Sales_Lag DESC;

==== 4.  Growth Opportunities Analysis:

---- 1 . Which regions show the highest levels of customer interest in electric vehicles, and how can BMW tailor its marketing efforts to these regions?

SELECT Region,COUNT(CustomerID) AS Total_Customers,AVG(CASE 
WHEN Interest = 'High' THEN 5
WHEN Interest = 'Medium' THEN 3
WHEN Interest = 'Low' THEN 1 ELSE 0 
END) AS Avg_Interest_Level
FROM Potential_Customers
WHERE Interest IS NOT NULL  -- Ensure only valid interest data is considered
GROUP BY Region
ORDER BY Avg_Interest_Level DESC;

--- 2. How does the interest level of potential customers in different regions correlate with actual sales performance for BMW's EVs?

SELECT pc.Region,COUNT(pc.CustomerID) AS Potential_Customers_Count,
SUM(bs.Sales) AS Total_Sales_Volume,AVG(CASE 
WHEN pc.Interest = 'High' THEN 5
WHEN pc.Interest = 'Medium' THEN 3
WHEN pc.Interest = 'Low' THEN 1 ELSE 0 
END) AS Avg_Interest_Level
FROM Potential_Customers pc
JOIN BMW_Sales bs
ON pc.Region = bs.Region
GROUP BY pc.Region
ORDER BY Avg_Interest_Level DESC;

select * from BMW_EVs bm 
select * from Potential_Customers
select * from BMW_Sales bs 

---- 3. Which EV features (e.g., range, battery capacity) are most important to potential customers in different regions, and how can BMW align its EV offerings to meet these preferences?

SELECT pc.Region,bm.Model,
AVG(CASE 
            WHEN bm.Range_km >= 400 THEN 5 
            WHEN bm.Range_km BETWEEN 300 AND 399 THEN 4
            WHEN bm.Range_km BETWEEN 200 AND 299 THEN 3
            WHEN bm.Range_km < 200 THEN 2
            ELSE 0 
END) AS Avg_Range_Preference,
AVG(CASE 
            WHEN bm.Battery_Capacity_kwh >= 75 THEN 5  
            WHEN bm.Battery_Capacity_kwh BETWEEN 60 AND 74 THEN 4
            WHEN bm.Battery_Capacity_kwh BETWEEN 50 AND 59 THEN 3
            WHEN bm.Battery_Capacity_kwh < 50 THEN 2
            ELSE 0 
        END) AS Avg_Battery_Capacity_Preference,
COUNT(pc.CustomerID) AS Potential_Customers_Count
FROM Potential_Customers pc
join BMW_Sales bs on pc.Region = bs.region
JOIN BMW_EVs bm ON bs.model = bm.model 
GROUP BY pc.Region, bm.Model
ORDER BY Avg_Range_Preference DESC, Avg_Battery_Capacity_Preference DESC;


--- 4. How do interest levels of potential customers correlate with the features they value most  and how can BMW prioritize these features in its product lineup?

select * from BMW_EVs bm 
select * from Potential_Customers
select * from BMW_Sales bs 

SELECT pc.Interest AS Interest_Level,
    AVG(CASE 
            WHEN bm.Range_km >= 400 THEN 5 
            WHEN bm.Range_km BETWEEN 300 AND 399 THEN 4
            WHEN bm.Range_km BETWEEN 200 AND 299 THEN 3
            WHEN bm.Range_km < 200 THEN 2
            ELSE 0 
        END) AS Avg_Range_Preference,
    AVG(CASE 
            WHEN bm.Battery_Capacity_kwh >= 75 THEN 5 
            WHEN bm.Battery_Capacity_kwh BETWEEN 60 AND 74 THEN 4
            WHEN bm.Battery_Capacity_kwh BETWEEN 50 AND 59 THEN 3
            WHEN bm.Battery_Capacity_kwh < 50 THEN 2
            ELSE 0 
        END) AS Avg_Battery_Capacity_Preference,
    
   COUNT(pc.CustomerID) AS Potential_Customers_Count
FROM Potential_Customers pc
JOIN BMW_Sales bs ON pc.Region = bs.Region
JOIN BMW_EVs bm ON bs.model = bm.model 
GROUP BY pc.Interest
ORDER BY 
    CASE 
        WHEN pc.Interest = 'High' THEN 1
        WHEN pc.Interest = 'Medium' THEN 2
        WHEN pc.Interest = 'Low' THEN 3
        ELSE 4  
    END;

--- 5 . •	How do feature preferences (e.g., range, battery capacity) vary by region, and how can BMW adapt its EV product offerings to different regional markets?

SELECT pc.Region,
    AVG(CASE 
            WHEN bm.Range_km >= 400 THEN 5  
            WHEN bm.Range_km BETWEEN 300 AND 399 THEN 4
            WHEN bm.Range_km BETWEEN 200 AND 299 THEN 3
            WHEN bm.Range_km < 200 THEN 2
            ELSE 0 
        END) AS Avg_Range_Preference,
    AVG(CASE 
            WHEN bm.Battery_Capacity_kwh >= 75 THEN 5  
            WHEN bm.Battery_Capacity_kwh BETWEEN 60 AND 74 THEN 4
            WHEN bm.Battery_Capacity_kwh BETWEEN 50 AND 59 THEN 3
            WHEN bm.Battery_Capacity_kwh < 50 THEN 2
            ELSE 0 
        END) AS Avg_Battery_Capacity_Preference,
    COUNT(pc.CustomerID) AS Potential_Customers_Count   
FROM 
    Potential_Customers pc
JOIN 
    BMW_Sales bs ON pc.Region = bs.Region
JOIN BMW_EVs bm ON bm.model = bm.model 
GROUP BY pc.Region 
ORDER BY pc.Region; 


select * from BMW_EVs bm 
select * from Potential_Customers
select * from BMW_Sales bs 






















