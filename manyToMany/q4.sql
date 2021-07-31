SELECT productCode, COUNT(productCode) FROM OrderDetails
GROUP BY productCode
HAVING COUNT(productCode) = 
(SELECT COUNT(DISTINCT(orderNumber)) FROM Orders)