-- SQL programming
DECLARE @var1 INT
SET @var1 = 10

IF (@var1 = 100)
BEGIN
	PRINT '@var1a2a3a4a5a6a7a8a9a0a�� 100�Դϴ�.'
END
ELSE IF ( @var1 != 100)
BEGIN
	PRINT ' @var1a2a3a4a5a6a7a8a9a0a�� 100�� �ƴմϴ�.'
END
ELSE 
BEGIN
	PRINT '@var1�� ����� �ƴմϴ�.'
ENDS