# Find the products sold in 2003 but not 2004.

DROP VIEW IF EXISTS productsSoldIn2003;
CREATE VIEW productsSoldIn2003 AS
	SELECT DISTINCT productCode, SUM(quantityOrdered) AS qty2003 FROM OrderDetails AS d
    JOIN Orders AS o ON o.orderNumber = d.orderNumber
    WHERE year(o.orderDate)=2003
    GROUP BY productCode;
    
DROP VIEW IF EXISTS productsSoldIn2004;
CREATE VIEW productsSoldIn2004 AS
	SELECT DISTINCT productCode, SUM(quantityOrdered) AS qty2004 FROM OrderDetails AS d
    JOIN Orders AS o ON o.orderNumber = d.orderNumber
    WHERE year(o.orderDate)=2004
    GROUP BY productCode;

SELECT a.productCode FROM productsSoldIn2003 AS a
LEFT JOIN productsSoldIn2004 AS b ON a.productCode = b.productCode
WHERE qty2004 IS NULL;