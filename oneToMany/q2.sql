# Report total payments for Atelier graphique.

SELECT SUM(amount) FROM Payments AS p
JOIN Customers AS c ON p.customerNumber=c.customerNumber
WHERE c.customerNumber = (
	SELECT customerNumber FROM Customers WHERE customerName = 'Atelier graphique'
    )