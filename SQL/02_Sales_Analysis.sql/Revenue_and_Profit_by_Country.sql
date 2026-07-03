SELECT
    [Country],
    SUM([Total_Amount]) AS [Total_Revenue],
    SUM([Profit]) AS [Total_Profit]
FROM [Sales Data]
WHERE
    [Date] BETWEEN '2025-02-10' AND '2025-02-14'
GROUP BY
    [Country]
ORDER BY
    [Total_Revenue] DESC;