-- Find NULL Values
Select * 
from [Sales Data]
Where 
	"Country" is null 
	or "Price_per_Unit" is null
	or "Quantity_purchased" is null
	or "Cost_Price" is null
	or "Discount_Applied" is null;
----------------------------------


