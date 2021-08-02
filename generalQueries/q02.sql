# Who reports to William Patterson?

SELECT CONCAT(firstName,' ',lastName) AS "Employees reporting to William Patterson"
FROM Employees
WHERE reportsTo = (SELECT employeeNumber FROM Employees 
    WHERE (lastName='Patterson' AND firstName='William'));