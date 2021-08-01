# List the names of employees called Dianne or Diane.

SELECT * FROM Employees
WHERE firstName REGEXP "Dian[e|ne]"