# Compute the commission for each sales representative, assuming the commission
#  is 5% of the value of an order. Sort by employee last name and first name.

SELECT lastName, firstName, ROUND(SUM(d.priceEach*d.quantityOrdered)/20,2) AS Commission
FROM Employees AS e
JOIN Customers AS c ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN Orders AS o ON c.customerNumber = o.customerNumber
JOIN OrderDetails AS d ON d.orderNumber = o.orderNumber
GROUP BY lastName, firstName
ORDER BY lastName, firstName