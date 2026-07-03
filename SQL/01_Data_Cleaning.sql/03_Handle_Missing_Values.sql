-- Update the quantity purchased for a specific transaction.
UPDATE [Sales Data]
SET [Quantity_purchased] = 3
WHERE [Transaction_ID] = '00a30472-89a0-4688-9d33-67ea8ccf7aea';
--------------------------------------

-- Replace missing unit prices with the average price for specific transactions.
Update "Sales Data" 
Set "Price_Per_Unit" = (
	Select 
		AVG("Price_Per_Unit")
		From "Sales Data"
		Where "Price_Per_Unit" Is not null
)
Where "Transaction_ID" IN (
    '95e49860-f77d-4598-a078-098a8c570147',
    '001898f7-b696-4356-91dc-8f2b73d09c63'
);
----------------------------------------------------------------
-- Discoint_Applied Misiing Value 

UPDATE [Sales Data]
SET [Discount_Applied] = 0
WHERE [Discount_Applied] IS NULL;