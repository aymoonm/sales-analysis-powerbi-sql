-- Add a new column to store the total transaction amount.
ALTER TABLE [Sales Data]
ADD [Total_Amount] DECIMAL(10,2);

-- Calculate the total amount for each transaction.
UPDATE [Sales Data]
SET [Total_Amount] =
    ([Price_Per_Unit] * [Quantity_Purchased]) - [Discount_Applied];

-------------------------------------------------------
-- Add a new column to store the profit for each transaction.
Alter table "Sales Data"
ADD "Profit" Numeric (10,2)


-- Calculate the profit for each transaction.
UPDATE [Sales Data]
SET [Profit] =
    [Total_Amount] - ([Cost_Price] * [Quantity_Purchased]);


Select * From "Sales Data"

