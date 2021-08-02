# What is the difference in the amount received for each month of 2004 compared to 2003?

DROP VIEW IF EXISTS monthlyAmountReceivedBase;
DROP VIEW IF EXISTS monthlyAmountReceivedNext;

CREATE VIEW monthlyAmountReceivedBase
AS
SELECT 
	month(paymentDate) AS monthOfDate,
	ROUND(SUM(amount),2) AS totalReceived
FROM Payments
WHERE year(paymentDate)=2003
GROUP BY monthOfDate;

CREATE VIEW monthlyAmountReceivedNext
AS
SELECT 
	month(paymentDate) AS monthOfDate,
	ROUND(SUM(amount),2) AS totalReceived
FROM Payments
WHERE year(paymentDate)=2004
GROUP BY monthOfDate;

SELECT 	(ly.monthOfDate) AS 'Month',
		ly.totalReceived AS "Previous year's total",
        ny.totalReceived AS "Following year's total",
        (ny.totalReceived-ly.totalReceived) AS 'Delta'
FROM monthlyAmountReceivedBase AS ly
JOIN monthlyAmountReceivedNext AS ny ON ly.monthOfDate=ny.monthOfDate
ORDER BY ly.monthOfDate;
