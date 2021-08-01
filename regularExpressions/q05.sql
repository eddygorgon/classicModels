# Which customers have a digit in their name?

SELECT * FROM Customers
WHERE customerName REGEXP "[0-9]"