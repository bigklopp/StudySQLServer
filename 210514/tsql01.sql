-- ���α׷��� ����

USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2); -- ���� 3, �Ҽ��� 2
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4, 3); -- ���� 1, �Ҽ��� 3

SET @myVar1 = 4000;
SET @myVar2 = 123.45;
SET @myVar3 = '���� �̸� ==> ';
SET @inchUnit = 0.393;
--SELECT @myVar1, @myVar2, @myVar3;
--SELECT @myVar3 AS [��  ==>], name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit FROM userTbl;