SELECT  
	Department as DeptName,
	COUNT(*) as EmployeeCnt
FROM    HumanResources.vEmployeeDepartment
group by Department
having count(*) between 6 and 10 -- or in (6, 10) or >= 15... all valid operartors

SELECT  
	SalesPersonID,
	sum(totaldue) as TotalSalesAmt,
	count(*) as TotalSalesCnt
FROM    sales.SalesOrderHeader
where OrderDate between '1/1/2006' and '12/31/2006' 
	and SalesPersonID is not null
group by SalesPersonID
having sum(totaldue) > 2000000
	and count(*) >= 75
order by TotalSalesAmt desc
