# What are the products with a product code in the range S700_1000 to S700_1499?

SELECT * FROM Products
WHERE (LEFT(productCode,6) REGEXP "S700_1") AND (RIGHT(productCode,3) < 500)