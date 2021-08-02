# Compute the total value ordered, total amount paid, and their difference 
# for each customer for orders placed in 2004 and payments received in 2004 
# (Hint; Create views for the total paid and total ordered).

DROP VIEW IF EXISTS totalValueOrdered;
DROP VIEW IF EXISTS totalPayment;

CREATE VIEW totalValueOrdered
AS
SELECT 	o.customerNumber AS customerNumber, 
		SUM(quantityOrdered*priceEach) AS totalAmountOrdered
FROM OrderDetails AS d
JOIN orders AS o ON o.orderNumber=d.orderNumber
WHERE orderDate LIKE '2004-%'
GROUP BY o.customerNumber;

CREATE VIEW totalPayment
AS
SELECT 	customerNumber, 
		SUM(amount) AS totalAmountPaid FROM Payments
        WHERE paymentDate LIKE '2004-%'
GROUP BY customerNumber;

SELECT 	p.customerNumber,
		totalAmountOrdered,
		totalAmountPaid ,
        ROUND((totalAmountOrdered-totalAmountPaid),2) AS 'Delta'
FROM totalValueOrdered AS v
JOIN totalPayment AS p ON p.customerNumber = v.customerNumber