# Which US customers are south west of the New York office?

SELECT * FROM Customers
WHERE 	( ST_X(customerLocation) < (SELECT ST_X(officeLocation) FROM Offices 
			WHERE city='NYC') )
AND		( ST_Y(customerLocation) < (SELECT ST_Y(officeLocation) FROM Offices 
			WHERE city='NYC') )
AND country = 'USA';
