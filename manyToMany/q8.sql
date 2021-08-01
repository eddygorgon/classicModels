# What is the quantity on hand for products listed on 'On Hold' orders?

SELECT p.productCode, SUM(d.quantityOrdered) FROM Products AS p
JOIN OrderDetails AS d ON d.productCode=p.productCode
JOIN Orders AS o ON o.orderNumber = d.orderNumber
WHERE o.status='on hold'
GROUP BY p.productCode
ORDER BY 1