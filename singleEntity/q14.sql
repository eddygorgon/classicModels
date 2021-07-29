SELECT CONCAT(firstName,' ',lastName) AS 'Executives' FROM Employees
WHERE (jobTitle LIKE '%VP%') OR (jobTitle LIKE '%manager%')