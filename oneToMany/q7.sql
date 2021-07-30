SELECT employeeNumber, CONCAT(firstName,' ',lastName) FROM Employees
WHERE officeCode = (
	SELECT officeCode FROM Offices WHERE city='Boston'
)