--prob1
SELECT  FirstName, LastName, JobTitle
FROM    HumanResources.vEmployeeDepartment
Order by FirstName

--prob2
SELECT  FirstName, LastName, JobTitle
FROM    HumanResources.vEmployeeDepartment
Order by FirstName, LastName desc

--prob3
SELECT  FirstName, LastName, CountryRegionName
FROM    sales.vIndividualCustomer
order by 3

--prob4
SELECT  FirstName, LastName, CountryRegionName
FROM    sales.vIndividualCustomer
where CountryRegionName in ('United States', 'France')
order by 3

--prob5
SELECT  Name, AnnualSales, YearOpened, SquareFeet as [Store Size], NumberEmployees as [Total Employees]
FROM    sales.vStoreWithDemographics
where AnnualSales > 1000000 and NumberEmployees >=45
order by [Store Size] desc, [Total Employees] desc