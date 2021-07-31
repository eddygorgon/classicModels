# Report for each product, the percentage value of its stock on hand as a percentage of 
# the stock on hand for product line to which it belongs. Order the report by product line 
# and percentage value within product line descending. Show percentages with two 
# decimal places.

DROP VIEW IF EXISTS productLineValue;
CREATE VIEW productLineValue AS
	SELECT productLine, SUM(quantityInStock*MSRP) AS productLineTotalValue
    FROM Products
    GROUP BY productLine;

SELECT a.productLine, a.productCode, a.productName,
		ROUND(100*(a.quantityInStock*a.MSRP)/productLineTotalValue,2) AS Percentage
FROM Products AS a
JOIN productLineValue AS b ON a.productLine=b.productLine
ORDER BY a.productLine, Percentage DESC;