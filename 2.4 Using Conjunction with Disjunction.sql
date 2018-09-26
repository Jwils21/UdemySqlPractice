-- and clause with or clause
SELECT  * 
FROM    HumanResources.Employee
where (MaritalStatus = 'S' and Gender = 'M') or OrganizationLevel = 4