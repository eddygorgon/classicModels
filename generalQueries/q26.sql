# Compute the ratio of payments for each customer for 2003 versus 2004.

DROP VIEW IF EXISTS amountLastYear;
CREATE VIEW amountLastYear AS
	SELECT customerNumber, SUM(amount) AS lastYear
    FROM Payments
	WHERE year(paymentDate)=2003
	GROUP BY customerNumber;

SELECT 	a.customerNumber,
		ROUND(SUM(a.amount)/lastYear,2) AS ratioThisYearOverLastYear
FROM Payments AS a
JOIN amountLastYear ON a.customerNumber = amountLastYear.customerNumber
WHERE year(a.paymentDate)=2004
GROUP BY a.customerNumber;