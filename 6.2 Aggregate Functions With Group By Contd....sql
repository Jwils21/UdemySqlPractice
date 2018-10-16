SELECT  st.name, p.FirstName + ' ' + p.LastName as SalesPerson, sum(totaldue) as TotalSales
FROM    Sales.SalesOrderHeader SOH
join sales.SalesPerson sp
	on soh.SalesPersonID = sp.BusinessEntityID
join person.person p
	on p.BusinessEntityID = sp.BusinessEntityID
join sales.salesterritory st
	on st.territoryid = soh.territoryid
where OrderDate between '1/1/2006' and '12/31/2006'
group by st.name, p.FirstName + ' ' + p.LastName
order by 1,2