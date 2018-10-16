--prob 1
SELECT  count(*) as Total
FROM    person.person

--prob 2
SELECT  count(MiddleName) as MiddleNames
FROM    person.person

--prob 3
SELECT  avg(standardcost)
FROM    Production.Product
where standardcost > 0

--prob 4
SELECT  avg(freight)
FROM    Sales.SalesOrderHeader
where TerritoryID = 4

--prob 5
SELECT  max(ListPrice)
FROM    Production.Product

--prob 6
SELECT  sum(p.ListPrice * i.Quantity ) 
FROM    production.Product p
join Production.ProductInventory i
	on p.ProductID = i.ProductID
where p.ListPrice > 0
