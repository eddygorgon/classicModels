# Compute the average time between order date and ship date for 
# each customer ordered by the largest difference.

SELECT customerNumber, AVG(datediff(date(shippedDate),date(orderDate))) AS avgDiff FROM Orders
GROUP BY customerNumber
ORDER BY avgDiff DESC