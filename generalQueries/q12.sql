# Write a procedure to increase the price of a specified product 
# category by a given percentage.

DROP PROCEDURE if exists increaseCategoryPrice;
DELIMITER //
CREATE PROCEDURE increaseCategoryPrice(IN perc FLOAT, IN kate VARCHAR(40))
BEGIN
	UPDATE Products SET MSRP=ROUND(MSRP*(1 + perc/100) ,2) WHERE productLine=kate;
END //
DELIMITER ;