--Prob 1
SELECT  
	TerritoryID,
	sum(TotalDue) as Total
FROM    Sales.SalesOrderHeader
group by TerritoryID
having sum(totaldue) > 10000000

--Prob 2
SELECT  
	t.Name,
	sum(TotalDue) as Total
FROM    Sales.SalesOrderHeader o
join sales.SalesTerritory t
	on o.TerritoryID = t.TerritoryID
group by t.Name
having sum(totaldue) > 10000000

--Prob 3
SELECT 
	color,  
	count(*) as Products
From Production.Product
where color is not null
group by color
having count(*) > 20

--Prob 4
SELECT 
	p.name as ProductName,  
	sum(d.orderqty) as Products
From sales.SalesOrderHeader h
join sales.SalesOrderDetail d
	on h.SalesOrderID = d.SalesOrderID
join production.product p
	on d.ProductID = p.ProductID
where h.OrderDate between '1/1/2006' and '12/31/2006' 
group by p.name
having sum(d.orderqty) >= 200

--prob 5
SELECT 
	p.FirstName + ' ' + p.lastname as CustomerName,  
	count(*) as Orders
From sales.SalesOrderHeader h
join sales.customer c
	on h.CustomerID = c.customerid
join person.person p
	on c.PersonID = p.BusinessEntityID
where h.OrderDate between '7/1/2005' and '12/31/2006' 
group by p.FirstName + ' ' + p.lastname
having count(*) >= 6
order by Orders