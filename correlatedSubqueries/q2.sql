# Which payments in any month and year are more than twice the average for that 
# month and year (i.e. compare all payments in Oct 2004 with the average payment for 
# Oct 2004)? Order the results by the date of the payment. You will need to use 
# the date functions.

DROP VIEW IF EXISTS monthlyAveragePayment;
CREATE VIEW monthlyAveragePayment AS
	SELECT 
		year(paymentDate) AS paymentYear,
		month(paymentDate) AS paymentMonth,
        ROUND(AVG(amount),2) AS averagePayment
	FROM Payments
    GROUP BY paymentYear, paymentMonth
    ORDER BY paymentYear, paymentMonth;
    
SELECT checkNumber, amount, customerNumber, averagePayment FROM Payments AS p
JOIN monthlyAveragePayment AS a ON ( (a.paymentYear=year(p.paymentDate)) 
								AND (a.paymentMonth=month(p.paymentDate)) )
WHERE amount > 2* averagePayment
ORDER BY paymentDate;