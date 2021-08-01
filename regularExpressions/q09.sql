# List the names of employees called Larry or Barry.

SELECT * FROM Employees
WHERE firstName REGEXP "^[L,B]arry"