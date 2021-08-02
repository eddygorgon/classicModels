# List the employees who report to those employees who report to Diane Murphy. 
# Use the CONCAT function to combine the employee's first name and last name

# into a single field for reporting.
SELECT CONCAT(a.firstName,' ',a.lastName) AS Person FROM Employees AS a
JOIN Employees AS b ON a.reportsTo = b.employeeNumber
JOIN Employees AS c ON b.reportsTo = c.employeeNumber
WHERE c.employeeNumber = (
SELECT employeeNumber FROM Employees WHERE (firstName='Diane' AND lastName='Murphy')
)