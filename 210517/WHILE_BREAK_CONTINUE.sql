-- 1부터 100까지의 수를 반복하면서 7의 배수를 합산하라.
DECLARE @i INT, @hap BIGINT, @hap7 BIGINT
SET @i = 0
SET @hap = 0
SET @hap7 = 0
while (@i <=100)
BEGIN
	IF (@i % 7 = 0)
		BEGIN
			SET @hap7 = @hap7 + @i
		END
	SET @hap = @hap + @i
	SET @i = @i + 1
END

PRINT CONCAT('1부터 100까지의 합은 ==> ', @hap)
PRINT CONCAT('1부터 100까지 7의 배수의 합은 ==> ', @hap7)