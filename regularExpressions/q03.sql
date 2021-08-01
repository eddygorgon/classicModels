# Report the number of customers in Denmark, Norway, and Sweden.

SELECT customerNumber, customerName, country
FROM Customers
WHERE country REGEXP "Denmark|Norway|Sweden"