# Write a procedure to change the credit limit of all customers in a specified 
# country by a specified percentage.

DROP PROCEDURE IF EXISTS changeCountryCreditLimit;

DELIMITER **
CREATE PROCEDURE changeCountryCreditLimit(IN paese VARCHAR(30), IN quanto FLOAT)
BEGIN
	UPDATE Customers SET creditLimit=creditLimit*(1+quanto/100)
    WHERE country=paese;
END **
DELIMITER ;