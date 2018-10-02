--Prob 1
SELECT  p.FirstName, p.LastName, pp.PasswordHash
FROM    Person.Person P
inner join Person.Password PP
	on p.BusinessEntityID = pp.BusinessEntityID;

--Prob 2
SELECT  e.BusinessEntityID, e.NationalIDNumber, e.JobTitle, ED.DepartmentID, ED.StartDate, ed.EndDate
FROM    HumanResources.Employee E
join HumanResources.EmployeeDepartmentHistory ED
on e.BusinessEntityID = ed.BusinessEntityID;

--Prob 3
SELECT  p.FirstName, p.LastName, pp.PasswordHash, em.EmailAddress
FROM    Person.Person P
inner join Person.Password PP
	on p.BusinessEntityID = pp.BusinessEntityID 
inner join Person.EmailAddress EM
	on em.BusinessEntityID = pp.BusinessEntityID;

--Prob 4
SELECT b.Title, b.ISBN, A.AuthorName
FROM  BookAuthor BA
inner join Book B
	on BA.AuthorID = B.BookID
inner join Author A
	on a.AuthorID = ba.AuthorID

--Prob 5
SELECT b.Title, b.ISBN, A.AuthorName, p.PublisherName
FROM  BookAuthor BA
inner join Book B
	on BA.AuthorID = B.BookID
inner join Author A
	on a.AuthorID = ba.AuthorID
inner join Publisher P
	on p.PublisherID = b.PublisherID