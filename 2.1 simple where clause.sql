SELECT  *
FROM    Production.Product
where ListPrice >= 10
order by ListPrice desc;

--not equal to 10
SELECT  *
FROM    Production.Product
where ListPrice != 10
order by ListPrice desc;



