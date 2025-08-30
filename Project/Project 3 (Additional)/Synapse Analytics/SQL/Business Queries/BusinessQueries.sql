-- Build Some Business Queries
-- Total Sales by Product Category
SELECT dp.Category, SUM(f.Amount) AS TotalSales
FROM dw.FactSales f
JOIN dw.DimProduct dp ON f.ProductSK = dp.ProductSK
GROUP BY dp.Category
ORDER BY TotalSales DESC;

-- Sales by State
SELECT dc.State, SUM(f.Amount) AS TotalSales
FROM dw.FactSales f
JOIN dw.DimCustomer dc ON f.CustomerSK = dc.CustomerSK
GROUP BY dc.State
ORDER BY TotalSales DESC;

-- Top 10 Customers
SELECT TOP 10
    dc.CustomerName,
    SUM(f.Amount) AS TotalSpent
FROM dw.FactSales f
JOIN dw.DimCustomer dc ON f.CustomerSK = dc.CustomerSK
GROUP BY dc.CustomerName
ORDER BY TotalSpent DESC;
