# Which orders have a value greater than $5,000?

SELECT orderNumber FROM OrderDetails
WHERE (quantityOrdered * priceEach) > 5000