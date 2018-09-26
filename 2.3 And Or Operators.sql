--and clause
SELECT  *
FROM    HumanResources.Employee
where  BirthDate >= '1/1/1980' AND Gender = 'F'

-- and clause
SELECT  *
FROM    HumanResources.Employee
where MaritalStatus = 'S' and Gender = 'M'; 

-- or clause
SELECT  *
FROM    HumanResources.Employee
where MaritalStatus = 'S' or Gender = 'M'; 