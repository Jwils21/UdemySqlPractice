SELECT p.FirstName, p.FirstName, soh.SalesOrderNumber,soh.TotalDue, ST.Name
FROM    Sales.SalesOrderHeader SOH
Left Join Sales.SalesPerson SP
	on sp.BusinessEntityID = soh.SalesPersonID
Left Join HumanResources.Employee E
	on E.BusinessEntityID = SP.BusinessEntityID
Left Join Person.Person P
	on P.BusinessEntityID = e.BusinessEntityID
Left join Sales.SalesTerritory ST
	on ST.TerritoryID = SOH.TerritoryID
where st.Name = 'Northwest'
order by soh.TotalDue desc