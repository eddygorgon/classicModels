# Report total payments for October 28, 2004.

SELECT SUM(amount) FROM Payments
WHERE paymentDate = '2004-10-28'