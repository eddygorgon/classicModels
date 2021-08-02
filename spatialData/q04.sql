# Which French customer is furthest from the Paris office?

SELECT customerNumber, ST_Distance(customerLocation,
		(SELECT officeLocation FROM Offices WHERE city="Paris")) AS distance
FROM Customers
WHERE country='France'
ORDER BY distance DESC