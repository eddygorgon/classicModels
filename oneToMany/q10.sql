# Report the number of orders 'On Hold' for each customer.

SELECT customerName, COUNT(orderNumber) FROM Customers
JOIN Orders ON Customers.customerNumber = Orders.customerNumber
WHERE status='on hold'
GROUP BY 1