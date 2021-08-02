# What is the value of orders shipped in August 2004? (Hint).

SELECT SUM(priceEach*quantityOrdered) AS Total FROM OrderDetails AS d
JOIN Orders AS o ON o.orderNumber = d.orderNumber
WHERE shippedDate LIKE '2004-08-%'