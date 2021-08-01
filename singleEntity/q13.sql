# Report the name and city of customers who don't have sales representatives?

SELECT customerName, city FROM Customers
WHERE salesRepEmployeeNumber IS NULL