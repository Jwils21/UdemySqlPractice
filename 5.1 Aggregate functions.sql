--Aggregate Functions
SELECT  Max(TotalDue)
FROM    Sales.SalesOrderHeader

SELECT  totaldue
FROM    Sales.SalesOrderHeader
order by TotalDue desc

SELECT  Min(TotalDue)
FROM    Sales.SalesOrderHeader

SELECT  COUNT(*)
FROM    Sales.SalesOrderHeader

--Count only counts non null values. (Except for when doing count(*))
select count(distinct firstname)
from Person.Person 

SELECT  AVG(TotalDue)
FROM    Sales.SalesOrderHeader

SELECT  sum(TotalDue)
FROM    Sales.SalesOrderHeader

