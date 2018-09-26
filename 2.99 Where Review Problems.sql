--prob1
SELECT  FirstName, LastName
FROM    Person.Person
where FirstName = 'Mark'

--prob2
SELECT  top 100 *
FROM Production.Product
where ListPrice != 0

--prob3
SELECT  *
FROM    HumanResources.vEmployee
Where LastName < 'd'

--prob4
SELECT  *
FROM  Person.StateProvince
where CountryRegionCode = 'CA'

--prob5
SELECT  FirstName as [Customer First Name], LastName as 'Customer Last Name'
FROM    sales.vIndividualCustomer
where LastName = 'Smith'

--prob6
SELECT  *
FROM    sales.vIndividualCustomer
where CountryRegionName = 'Australia' or (PhoneNumberType = 'cell' and EmailPromotion = 0)

--prob7
SELECT  *
FROM    HumanResources.vEmployeeDepartment
where Department in ('Executive','Tool Design', 'Engineering')

SELECT  *
FROM    HumanResources.vEmployeeDepartment
where Department = 'Executive' or Department = 'Tool Design' or Department = 'Engineering'

--prob8
SELECT  *
FROM    HumanResources.vEmployeeDepartment
where StartDate between '7/1/2000' and '6/30/2002'

SELECT  *
FROM    HumanResources.vEmployeeDepartment
where StartDate >= '7/1/2000' and StartDate <= '6/30/2002'

--prob9
SELECT  *
FROM    Sales.vIndividualCustomer 
where LastName like 'R%'

--prob10
SELECT  *
FROM    Sales.vIndividualCustomer 
where LastName like '%R'

--prob11
SELECT  *
FROM    Sales.vIndividualCustomer
where (LastName in ('Lopez', 'Martin', 'Wood')) and FirstName like '[C-L]%'

--prob12
SELECT  *
FROM    sales.SalesOrderHeader
where SalesPersonID is not null;

--prob13
SELECT  SalesPersonID, TotalDue
FROM    sales.SalesOrderHeader
where SalesPersonID is not null and TotalDue > 70000;