SELECT  *
FROM    HumanResources.vEmployee
where FirstName = 'Chris' or FirstName = 'Steve' or FirstName = 'Michael' or FirstName = 'Thomas'

--Benefit of using in, same as above
SELECT  *
FROM    HumanResources.vEmployee
where FirstName IN ('Chris', 'Steve', 'Michael', 'Thomas')

--between clause
SELECT  *
FROM    Sales.vStoreWithDemographics
where AnnualSales between 1000000 and 2000000;

--Wildcard Character use
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like 'Mi%' --any amount of charachters

--Wildcard Character use
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like 'Mi_' --only 1 charachter

--Wildcard Character use
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like '%s' --ends with s

--Wildcard Character use
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like '%h%' --h in the name
