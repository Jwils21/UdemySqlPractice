--prob 1
SELECT  count(*)
FROM    Person.Person
group by PersonType

--prob 2
SELECT  count(*), Color
FROM    Production.Product
where Color in ('Red', 'black')
group by Color


--prob 3
SELECT  count(*), TerritoryID
FROM    sales.SalesOrderHeader
where OrderDate between '7/1/2005' and '12/31/2006'
group by TerritoryID

--prob 4
SELECT  count(*), t.name
FROM    sales.SalesOrderHeader o
join sales.SalesTerritory t
	on o.TerritoryID = t.TerritoryID
where OrderDate between '7/1/2005' and '12/31/2006'
group by t.name

--prob 5
SELECT  count(*)
FROM    book b
join BookAuthor ba
	on b.BookID = ba.BookID
join Author a
	on ba.AuthorID = a.AuthorID	
join Publisher p
	on p.PublisherID = b.PublisherID
group by a.AuthorName



