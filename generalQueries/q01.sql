# Who is at the top of the organization (i.e.,  reports to no one).

SELECT CONCAT(firstName, ' ',lastName) AS Person FROM Employees
WHERE reportsTo IS NULL