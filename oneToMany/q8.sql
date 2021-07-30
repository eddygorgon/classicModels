SELECT amount, customerName FROM Payments AS p
JOIN Customers AS c ON p.customerNumber = c.customerNumber
WHERE amount > 100000
ORDER BY amount DESC