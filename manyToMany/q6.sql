# Reports those products that have been sold with a markup of 100% or more (i.e.,  
# the priceEach is at least twice the buyPrice)

SELECT DISTINCT productName FROM Products AS p
JOIN OrderDetails AS o ON o.productCode = p.productCode
WHERE o.priceEach > 2 * p.buyPrice