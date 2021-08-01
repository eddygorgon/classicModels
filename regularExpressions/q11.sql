# List the vendors whose name ends in Diecast

SELECT DISTINCT productVendor FROM Products
WHERE productVendor REGEXP 'Diecast$'