Select * From [Sales Data]

-- Find the top 10 best-selling products within the selected date range.
SELECT TOP 5
    [Product_Name],
    SUM([Quantity_Purchased]) AS [Total_Units_Sold]
FROM [Sales Data]
WHERE [Date] BETWEEN '2025-02-01' AND '2025-02-14'
GROUP BY [Product_Name]
ORDER BY [Total_Units_Sold] DESC;
--------------------------------------------------------

-- Find the top 5 sales representatives by total sales within the selected date range.
SELECT TOP 5
	[Sales_Rep],
	SUM([Total_Amount]) AS [Total_Sales]
FROM [Sales Data]
Where [Date] BETWEEN '2025-02-01' AND '2025-02-14'
Group By [Sales_Rep]
Order By [Total_Sales] DESC;
-------------------------------------------------------
-- Find the top 5 store locations by total sales and profit within the selected date range.
Select TOP 5
	[Store_Location],
	SUM(Total_Amount) AS [Total_Sales],
	SUM([Profit]) AS [Total_Profit]
From [Sales Data]
Where [Date] BETWEEN '2025-02-01' AND '2025-02-14'
Group By [Store_Location]
Order BY [Total_Sales] DESC;
