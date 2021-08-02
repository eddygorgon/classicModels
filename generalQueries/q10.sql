# What is the percentage value of each product in inventory 
# sorted by the highest percentage first (Hint: Create a view first).
DROP VIEW IF EXISTS ValueOfEachProductsStock;

CREATE VIEW ValueOfEachProductsStock AS SELECT productName, quantityInStock*MSRP 
AS productValue 
FROM Products;

SELECT * , 
ROUND(100*productValue/ (SELECT SUM(productValue) FROM ValueOfEachProductsStock),2)
AS "Percentage of total stock value" 
FROM ValueOfEachProductsStock
ORDER BY 3 DESC;