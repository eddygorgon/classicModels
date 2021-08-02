# Same as Last Year (SALY) analysis: Compute the ratio for each product of 
# sales for 2003 versus 2004.

DROP VIEW IF EXISTS productSale2003;
CREATE VIEW productSale2003 AS
SELECT productCode, SUM(quantityOrdered*priceEach) AS sales2003
FROM OrderDetails AS d
JOIN Orders AS o ON o.orderNumber=d.orderNumber
WHERE year(orderDate)=2003
GROUP BY productCode;

DROP VIEW IF EXISTS productSale2004;
CREATE VIEW productSale2004 AS
SELECT productCode, SUM(quantityOrdered*priceEach) AS sales2004
FROM OrderDetails AS d
JOIN Orders AS o ON o.orderNumber=d.orderNumber
WHERE year(orderDate)=2004
GROUP BY productCode;

SELECT 	a.productCode,
		ROUND(sales2004/sales2003,2) AS ratio2004To2003
FROM productSale2003 AS a
JOIN productSale2004 AS b ON a.productCode=b.productCode