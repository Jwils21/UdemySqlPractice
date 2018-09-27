--sort by multiple criteria
SELECT  FirstName as [Customer First Name], LastName
FROM    sales.vIndividualCustomer
Order by LastName, [Customer First Name] desc

--Use where and order by
SELECT  LastName, FirstName, SalesQuota as [Sales Quota]
FROM    sales.vSalesPerson
where SalesQuota >= 250000
order by SalesQuota desc, 1 --This is last name since its listed first in the select clause
