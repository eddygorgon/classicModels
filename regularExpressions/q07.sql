# List the products containing ship or boat in their product name.

SELECT * FROM Products
WHERE productName REGEXP "ship|boat"