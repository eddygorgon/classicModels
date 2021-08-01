# List products ending in 'ship'.

SELECT * FROM Products
WHERE productName REGEXP 'ship$'