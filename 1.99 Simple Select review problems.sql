--Prob1
SELECT  NationalIDNumber
FROM	HumanResources.Employee

--prob2
SELECT  NationalIDNumber, JobTitle
FROM    HumanResources.Employee

--problem3 
SELECT  top 20 percent NationalIDNumber,JobTitle,BirthDate
FROM    HumanResources.Employee

--problem4
select top 500 NationalIDNumber as [SSN], JobTitle as [Job Title]
from HumanResources.Employee

--problem5
SELECT  *
FROM    Sales.SalesOrderHeader

--prob6
SELECT top 50 percent *
FROM    sales.customer

--prob7
SELECT  Name as "Product's Name"
FROM    Production.vProductAndDescription

--prob 8
SELECT top 400 *
FROM    HumanResources.Department

--prob9
SELECT  *
FROM    Production.BillOfMaterials

--prob10
Select top 1500 *
from Sales.vPersonDemographics