# How many products in each product line?

SELECT productLine, COUNT(productCode) FROM Products
GROUP BY productLine