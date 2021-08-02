# Find the customers without payments in 2003.

SELECT customerName, SUM(p.amount) FROM Customers AS c
LEFT JOIN Payments AS p ON c.customerNumber=p.customerNumber
GROUP BY customerName
HAVING SUM(p.amount) IS NULL