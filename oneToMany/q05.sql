# List the amount paid by each customer.

SELECT customerNumber AS Customer, ROUND(SUM(amount),2) FROM payments
GROUP BY 1
ORDER BY 1 ASC