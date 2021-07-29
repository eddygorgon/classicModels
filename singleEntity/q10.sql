SELECT * FROM Payments
WHERE amount > 2* (
SELECT AVG(amount) FROM payments)