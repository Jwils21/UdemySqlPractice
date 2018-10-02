--example 1
SELECT  pc.Name as ProductSubCategoryName,
		ps.Name as ProductCategoryName
FROM    production.ProductCategory pc
Inner Join Production.ProductSubcategory ps
	on pc.ProductCategoryID= ps.ProductCategoryID

--example 2
SELECT  p.FirstName, p.LastName, e.EmailAddress, pp.PhoneNumber
FROM    Person.Person P
join Person.EmailAddress E
	on p.BusinessEntityID = e.BusinessEntityID
join person.PersonPhone PP
	on pp.BusinessEntityID = p.BusinessEntityID