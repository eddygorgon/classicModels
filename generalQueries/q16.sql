# Write a procedure to report the amount ordered in a specific month and year for 
# customers containing a specified character string in their name.

DROP PROCEDURE IF EXISTS reportOrderedAmount;
DELIMITER //
CREATE PROCEDURE reportOrderedAmount(IN mese INT, IN anno INT, IN str VARCHAR(20))
	BEGIN
    SELECT 	customerName,
			ROUND(SUM(quantityOrdered*priceEach),2) AS 'Amount ordered'
	FROM Customers AS c
    JOIN Orders AS o ON c.customerNumber=o.customerNumber
    JOIN OrderDetails AS d ON d.orderNumber=o.orderNumber
    WHERE (customerName LIKE CONCAT('%',str,'%')) AND month(orderDate)=mese AND year(orderDate)=anno
    GROUP BY customerName;
    END //
    DELIMITER ;