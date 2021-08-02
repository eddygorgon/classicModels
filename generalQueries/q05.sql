# What is the difference in days between the most recent and oldest order date in the Orders file?

SELECT DATEDIFF(
LEFT(MAX(orderDate),10),
LEFT(MIN(orderDate),10)
) FROM Orders