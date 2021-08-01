# List the products ordered on a Monday.

SELECT DISTINCT productName FROM Products AS p
LEFT JOIN OrderDetails AS d ON d.productCode = p.productCode
LEFT JOIN Orders AS o ON d.orderNumber = o.orderNumber
WHERE dayname(o.orderDate) = 'MONDAY'