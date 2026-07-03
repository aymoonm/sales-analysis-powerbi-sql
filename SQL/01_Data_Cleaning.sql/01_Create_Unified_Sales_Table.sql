-- Create a new table by combining sales data from multiple countries.
SELECT * INTO [Sales Data]
FROM [sales_Canada]
UNION ALL
SELECT  * FROM [sales_China]
UNION ALL
SELECT  * FROM [sales_India]
UNION ALL
SELECT  * FROM [sales_Nigeria]
UNION ALL
SELECT  * FROM [sales_UK]
UNION ALL
SELECT  * FROM [sales_US]
----------------------------------
Select  * From [Sales Data]