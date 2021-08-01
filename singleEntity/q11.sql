# What is the average percentage markup of the MSRP on buyPrice?

SELECT ROUND(AVG(MSRP/buyPrice)*100-100,1) AS 'Avg Markup' FROM Products