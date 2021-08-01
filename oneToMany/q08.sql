# Report those payments greater than $100,000. Sort the report so the customer
# who made the highest payment appears first.

SELECT amount, customerName FROM Payments AS p
JOIN Customers AS c ON p.customerNumber = c.customerNumber
WHERE amount > 100000
ORDER BY amount DESC