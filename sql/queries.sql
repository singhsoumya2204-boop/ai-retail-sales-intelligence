-- Revenue by Product
SELECT ProductID,
SUM(SalesAmount) AS Revenue
FROM FactSales
GROUP BY ProductID;

-- Profit by Region
SELECT RegionID,
SUM(SalesAmount - CostAmount) AS Profit
FROM FactSales
GROUP BY RegionID;

-- Revenue by Customer Segment
SELECT C.Segment,
SUM(F.SalesAmount) Revenue
FROM FactSales F
JOIN DimCustomer C
ON F.CustomerID = C.CustomerID
GROUP BY C.Segment;
