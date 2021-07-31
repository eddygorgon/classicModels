SELECT productName,LEFT(orderDate,10) FROM Products AS p
LEFT JOIN OrderDetails AS d ON d.productCode = p.productCode
LEFT JOIN Orders AS o ON d.orderNumber = o.orderNumber
ORDER BY orderDate DESC