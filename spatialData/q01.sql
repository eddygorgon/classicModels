# Which customers are in the Southern Hemisphere?

SELECT 	customerNumber,
		customerName
FROM Customers
WHERE SUBSTRING(ST_AsText(customerLocation),7) REGEXP '^-'