-- 1���� 100������ ���� �ݺ��ϸ鼭 7�� ����� �ջ��϶�.
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

PRINT CONCAT('1���� 100������ ���� ==> ', @hap)
PRINT CONCAT('1���� 100���� 7�� ����� ���� ==> ', @hap7)