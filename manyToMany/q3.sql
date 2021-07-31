SELECT c.customerName, d.orderNumber, SUM(d.priceEach*d.quantityOrdered) AS orderValue
FROM OrderDetails AS d
JOIN Orders AS o ON d.orderNumber = o.orderNumber
JOIN Customers AS c ON o.customerNumber = c.customerNumber
GROUP BY 2
HAVING orderValue > 25000
ORDER BY orderValue DESC