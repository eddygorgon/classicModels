SELECT orderDate FROM Orders AS o
JOIN OrderDetails AS d ON d.orderNumber = o.orderNumber
JOIN Products AS p ON p.productCode = d.productCode
WHERE productName = "1940 Ford Pickup Truck"
ORDER BY orderDate DESC