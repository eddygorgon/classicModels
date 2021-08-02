# Write a function to convert miles per gallon to liters per 100 kilometers.

DROP PROCEDURE IF EXISTS mpgToEur;
DELIMITER [[
CREATE PROCEDURE mpgToEur(IN mpg FLOAT,OUT l100km FLOAT)
BEGIN
	SELECT ROUND((378.54/1.609344/mpg),2) INTO l100km;
END [[
DELIMITER ;