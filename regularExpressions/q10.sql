# List the names of employees with non-alphabetic characters in their names.

SELECT * FROM Employees
WHERE CONCAT(firstName,lastName) REGEXP " |[0-9]"