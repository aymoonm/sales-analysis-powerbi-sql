Select * From [Sales Data]

-- Calculate the minimum, maximum, average, and total sales and profit.
Select 
	MIN([Total_Amount]) AS [Min Sales Value],
	MAX([Total_Amount]) AS [MAX Sales Value],
	AVG([Total_Amount]) AS [AVG Sales Value],
	SUM([Total_Amount]) AS [SUM Sales Value],
	MIN([Profit]) AS [Min Profit],
	MAX([Profit]) AS [MAX Profit],
	AVG([Profit]) AS [AVG Profit],
	SUM([Profit]) AS [Total Profit]
From [Sales Data]
Where [Date] BETWEEN '2025-02-01' AND '2025-02-14';
--------------------------------------------------------------------