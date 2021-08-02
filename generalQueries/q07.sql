# What is the value of orders shipped in August 2004?

SELECT ROUND(SUM(priceEach*quantityOrdered),2) FROM OrderDetails AS d
JOIN Orders AS o ON o.orderNumber = d.orderNumber
WHERE o.shippedDate LIKE '2004-08-%'