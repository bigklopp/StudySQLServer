-- CASE
DECLARE @point INT, @credit CHAR(1)
SET @point = 100


SET @credit = 
CASE
	WHEN (@point >= 90) THEN 'A'
	WHEN (@point >= 80) THEN 'B'
	WHEN (@point >= 70) THEN 'C'
	WHEN (@point >= 60) THEN 'D'
	ELSE 'F'
END;	

SELECT @credit, @point;
PRINT CONCAT('ÃëµæÁ¡¼ö ==> ', @credit);