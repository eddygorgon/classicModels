# Report the total payments by date

SELECT LEFT(paymentDate,10) AS "Date", SUM(amount) FROM Payments
GROUP BY Date
ORDER BY Date DESC