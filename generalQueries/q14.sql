# What is the ratio the value of payments made to orders received for each month of 2004. 
# (i.e., divide the value of payments made by the orders received)?

DROP VIEW IF EXISTS totalPaymentsReceived;
DROP VIEW IF EXISTS totalOrdersReceived;

CREATE VIEW totalPaymentsReceived AS
SELECT 	month(p.paymentDate) AS monthNo, 
		SUM(p.amount) AS paymentsReceived 
FROM Payments AS p
WHERE p.paymentDate LIKE '2004-%'
GROUP BY monthNo
ORDER BY monthNo;

CREATE VIEW totalOrdersReceived AS
SELECT 	month(o.orderdate) AS monthNo, 
		sum(d.priceEach*d.quantityOrdered) AS ordersReceived
FROM Orders AS o
JOIN OrderDetails AS d ON d.orderNumber = o.orderNumber
WHERE o.orderDate LIKE '2004-%'
GROUP BY monthNo
ORDER BY monthNo;

SELECT 	totalPaymentsReceived.monthNo,
		ROUND((paymentsReceived/ordersReceived),2) AS "Ratio Payments to Orders"
FROM totalPaymentsReceived
JOIN totalOrdersReceived ON totalOrdersReceived.monthNo= totalPaymentsReceived.monthNo;