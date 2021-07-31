# Who reports to Mary Patterson?

SELECT CONCAT(firstName,' ',lastName) AS 'Employee reporting to Mary Patterson' 
FROM Employees
WHERE reportsTo = 	(
					SELECT employeeNumber FROM Employees
                    WHERE firstName='Mary' AND lastName='Patterson'
                    );