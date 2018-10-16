--Prob 1
SELECT  s.BusinessEntityID, s.SalesYTD, t.Name as 'Territory Name'
FROM     Sales.SalesPerson S
	Left Join Sales.SalesTerritory t
	on s.TerritoryID = t.TerritoryID

--prob 2
SELECT  s.BusinessEntityID, s.SalesYTD, t.Name as 'Territory Name', p.FirstName, p.LastName
FROM     Sales.SalesPerson S
Left Join Sales.SalesTerritory t
	on s.TerritoryID = t.TerritoryID
Left Join Person.Person p
	on s.BusinessEntityID = p.BusinessEntityID
where t.Name in ('Northeast', 'Central')

--prob 3
SELECT  p.Name, p.ListPrice, s.Name as  'ProoductSubCategoryName', c.Name as ProductCategory
FROM    Production.Product p
Left Join Production.ProductSubcategory s
	on p.ProductSubcategoryID = s.ProductSubcategoryID
Left Join Production.ProductCategory c
	on c.ProductCategoryID = s.ProductCategoryID
order by c.Name desc, s.Name
