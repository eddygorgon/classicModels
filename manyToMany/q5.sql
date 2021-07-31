SELECT DISTINCT productName FROM Products AS p
JOIN OrderDetails AS o ON o.productCode = p.productCode
WHERE o.priceEach < 0.8 * p.MSRP