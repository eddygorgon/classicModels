SELECT customerName, COUNT(orderNumber) FROM Customers
JOIN Orders ON Customers.customerNumber = Orders.customerNumber
WHERE status='on hold'
GROUP BY 1