SELECT  p.Name, p.ProductNumber, ps.Name as 'Product SubCategory Name'
FROM    Production.Product P
inner join Production.ProductSubcategory PS
	on p.ProductSubcategoryID = ps.ProductSubcategoryID
