# List all the products purchased by Herkku Gifts.

SELECT DISTINCT productName FROM Products AS p
JOIN OrderDetails AS d ON d.productCode=p.productCode
JOIN Orders AS o ON o.orderNumber = d.orderNumber
WHERE o.customerNumber = 
	(
	SELECT customerNumber FROM Customers WHERE customerName = 'Herkku Gifts'
    )