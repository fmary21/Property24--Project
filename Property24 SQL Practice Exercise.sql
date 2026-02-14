----1. Display all properties in the database.

SELECT TOP (1000) [PROPERTY_ID]
      ,[COUNTRY]
      ,[PROVINCE]
      ,[CITY]
      ,[PROPERTY_PRICE]
      ,[BEDROOMS]
      ,[BATHROOMS]
      ,[PARKING]
      ,[FLOOR_SIZE]
      ,[Monthly_Repayment]
      ,[Total_Once_off_Costs]
      ,[Min_Gross_Monthly_Income]
  FROM [HousingProject].[dbo].[property24]
--------------------------------------------------------------------------------------

----2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.

Select City,
      Province,
      Property_Price
From property24;
-------------------------------------------------------------------------------------------
----3. List all distinct provinces in the table

Select Distinct Province
From property24;

------------------------------------------------------------------------------------------
----4. Find all properties located in Gauteng.

Select *
From property24
Where PROVINCE = 'Gauteng';

--------------------------------------------------------------------------------------------
----5. Show properties priced under R1,500,000.

Select * 
From property24
Where PROPERTY_PRICE < 1500000;

----------------------------------------------------------------------------------------------

----6. List properties with more than 3 bedrooms.

Select *
From property24
Where BEDROOMS > 3;

------------------------------------------------------------------------------------------------------
------7. Find properties with parking for at least 2 cars.

Select *
From [HousingProject].[dbo].[property24]
Where Parking >=2;

------------------------------------------------------------------------------------------------------

----8. Show properties where the monthly repayment is greater than R25,000.

SELECT *
FROM [HousingProject].[dbo].[property24]
WHERE Monthly_Repayment > 25000;

-----------------------------------------------------------------------------------------------------

-----9. Show all properties ordered by property price from highest to lowest.

Select *
From [HousingProject].[dbo].[property24]
Order By PROPERTY_PRICE DESC;

------------------------------------------------------------------------------------------------------
----10. List properties ordered by floor size from smallest to largest

Select *
From Property24
Order By Property_Price ASC;

--------------------------------------------------------------------------------------------
------11. Show Gauteng properties ordered by monthly repayment.

SELECT *
FROM Property24
WHERE Province = 'Gauteng'
ORDER BY Monthly_Repayment ASC;


-------------------------------------------------------------------------------------------

-----12. Find Western Cape properties priced below R3,000,000

Select *
From property24
Where PROVINCE = 'Western Cape' AND
     PROPERTY_PRICE < 3000000
------------------------------------------------------------------------------------------------

----13. Show KwaZulu-Natal properties with 3 or more bedrooms.

Select *
From property24
Where PROVINCE = 'Kwazulu-Natal'
AND BEDROOMS >= 3;

----------------------------------------------------------------------------------------

----14. Find properties in Limpopo or Free State ordered by property price.

SELECT *
FROM [HousingProject].[dbo].[property24]
WHERE Province = 'Limpopo' 
   OR Province = 'Free State'
ORDER BY Property_Price ASC;

--------------------------------------------------------------------------------------
----15. Show the 10 most expensive properties.

SELECT TOP 10 *
FROM Property24
ORDER BY Property_Price DESC;

---------------------------------------------------------------------------------------

---16. Show the 5 cheapest properties.

SELECT TOP 5 *
FROM Property24
ORDER BY Property_Price ASC;

---------------------------------------------------------------------------------------

-----17. Show the top 10 properties with the largest floor size.

SELECT TOP 10 *
FROM Property24
ORDER BY FLOOR_SIZE DESC;

----------------------------------------------------------------------------------------

---18. Which province appears to have the highest priced properties?

SELECT Province, MAX(Property_Price) AS Highest_Price
FROM property24
GROUP BY Province
ORDER BY Highest_Price DESC;

--------------------------------------------------------------------------------------
----19. Which cities appear to have the most affordable housing?

SELECT City, MIN(Property_Price) AS Cheapest_Property
FROM [HousingProject].[dbo].[property24]
GROUP BY City
ORDER BY Cheapest_Property ASC;

--------------------------------------------------------------------------------------

---20. What minimum income is typically required for properties priced above R4,000,000?

SELECT PROPERTY_ID,
       PROPERTY_PRICE,
       Monthly_Repayment,
       CAST(Monthly_Repayment / 0.30 AS DECIMAL(18,2)) AS MinRequiredIncome
FROM [HousingProject].[dbo].[property24]
WHERE Property_Price > 4000000
ORDER BY MinRequiredIncome DESC;

----------------------------------------------------------------------------------------------