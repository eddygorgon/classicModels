SELECT SUM(quantityOrdered*priceEach) FROM OrderDetails AS d
JOIN Orders AS o on o.orderNumber = d.orderNumber
WHERE o.status='on hold'