SELECT  salespersonid, sum(TotalDue) as TotalSales
FROM    sales.SalesOrderHeader
Group By SalesPersonID

-- Adds number of locations
SELECT  ProductID, sum(quantity) as 'Total Stock', count(*) as  'Locations'
FROM    Production.ProductInventory i
Group by ProductID
