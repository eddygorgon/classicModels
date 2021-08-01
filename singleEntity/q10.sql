# List all payments greater than twice the average payment.

SELECT * FROM Payments
WHERE amount > 2* (
SELECT AVG(amount) FROM payments)