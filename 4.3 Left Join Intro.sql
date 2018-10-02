--Inner Join
SELECT  p.Name, p.ProductNumber, ps.name as 'Product SubCategory Name'
FROM    Production.Product P
inner join Production.ProductSubcategory PS
	on p.ProductSubcategoryID = ps.ProductSubcategoryID

--Modified for left outer join
SELECT  p.Name, p.ProductNumber, ps.name as 'Product SubCategory Name'
FROM    Production.Product P
left join Production.ProductSubcategory PS
	on p.ProductSubcategoryID = ps.ProductSubcategoryID
order by ps.Name desc;

--Modified for Right outer join
SELECT  p.Name, p.ProductNumber, ps.name as 'Product SubCategory Name'
FROM    Production.Product P
Right join Production.ProductSubcategory PS
	on p.ProductSubcategoryID = ps.ProductSubcategoryID