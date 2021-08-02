# Which customers are closest to the Tokyo office (i.e., closer to Tokyo than 
# any other office)?

SELECT @tokyo:= officeLocation FROM Offices WHERE city='Tokyo';

SELECT customerName,
MIN(ST_distance(customerLocation,officeLocation) - ST_distance(customerLocation,@tokyo)) AS delta
FROM Customers
JOIN Offices
GROUP BY customerName
HAVING delta =0
ORDER BY delta DESC