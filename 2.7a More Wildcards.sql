--restrict to certain charachters
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like 'D[a,o]n' --only a or o

--restrict to certain charachters
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like 'D[a-f, r-z]n' --can also use ranges

--restrict to certain charachters
SELECT  *
FROM    HumanResources.vEmployee
where FirstName like 'D[^a-f]n' --^ is not operator, not in range a-f



