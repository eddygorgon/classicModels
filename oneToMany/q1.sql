SELECT customerName AS Customer, CONCAT(firstName,' ',lastName) AS "Sales Rep" FROM Customers AS c
JOIN Employees AS e ON c.salesRepEmployeeNumber=e.employeeNumber
ORDER BY Customer