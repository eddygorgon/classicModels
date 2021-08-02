# Who is the northernmost customer?

SELECT * FROM Customers
ORDER BY ST_X(customerLocation) DESC
LIMIT 1