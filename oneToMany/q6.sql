SELECT COUNT(orderNumber) FROM Orders
WHERE customerNumber = (
	SELECT customerNumber FROM Customers WHERE customerName='Herkku gifts'
)