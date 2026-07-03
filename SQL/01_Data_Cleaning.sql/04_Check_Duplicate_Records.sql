-- Check for duplicate transaction IDs.
Select 
	"Transaction_ID",
	Count(*)
From
	"Sales Data"
Group By 
	"Transaction_ID"
Having 
	Count(*) > 1;