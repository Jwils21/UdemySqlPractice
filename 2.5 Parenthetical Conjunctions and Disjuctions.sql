SELECT  *
FROM    Production.Product
where (ListPrice > 100 and Color = 'red') or StandardCost >30;

SELECT  *
FROM    Production.Product
where ListPrice > 100 and (Color = 'red' or StandardCost >30);

SELECT  *
FROM    HumanResources.vEmployeeDepartment
where Department = 'Research and Development' or (StartDate < '1/1/2005' and Department = 'Executive')

select * 
from Sales.vStoreWithDemographics
where (AnnualSales > 1000000 and BusinessType = 'os') or 
	(YearOpened < 1990 and SquareFeet > 40000 and NumberEmployees > 10)