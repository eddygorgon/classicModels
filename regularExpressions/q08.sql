# List the products with a product code beginning with S700.

SELECT * FROM Products
WHERE productCode REGEXP "^S700"