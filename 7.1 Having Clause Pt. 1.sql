SELECT  st.name, sum(totaldue) as TotalSales
FROM    Sales.SalesOrderHeader SOH
join sales.salesterritory st
	on st.territoryid = soh.territoryid
where OrderDate between '1/1/2006' and '12/31/2006'
group by st.name
having sum(totaldue) > 4000000
order by 1


SELECT  ps.name, count(*) as ProductCount
FROM    production.product P
join Production.ProductSubcategory ps
	on ps.ProductSubcategoryID = p.ProductSubcategoryID
group by ps.Name
having count(*) >= 15
order by 1
