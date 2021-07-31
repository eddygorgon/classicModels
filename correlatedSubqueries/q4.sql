# For orders containing more than two products, report those products that
# constitute more than 50% of the value of the order.

# these are the orders that have more than 2 products
DROP VIEW IF EXISTS interestingOrders;
CREATE VIEW interestingOrders AS
SELECT 	orderNumber,
		COUNT('1') AS numberOfProducts, 
		SUM(quantityOrdered*priceEach) AS totalValue 
FROM OrderDetails 
GROUP BY orderNumber
HAVING numberOfProducts > 2;

SELECT 	d.productCode, d.orderNumber,
		ROUND(d.quantityOrdered*d.priceEach,2) AS productValue,
        ROUND(i.totalValue,2) AS totalOrderValue
		FROM orderDetails AS d
JOIN interestingOrders AS i ON i.orderNumber = d.orderNumber
WHERE (d.quantityOrdered*d.priceEach) > 0.5 * i.totalValue