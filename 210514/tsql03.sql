-- ���ڿ� �Լ� ��� �� ��
SELECT ASCII('B'), CHAR(66); -- ��� �� ��
SELECT UNICODE('��'), NCHAR(44032);


-- ���ڿ� ����
SELECT CONCAT('SQL ', ' SERVER ', 2019) AS [NAME]; -- ��� �� ��
SELECT 'SQL' + ' SERVER ' + '2019';
SELECT 'SQL' + ' SERVER ' + CAST(2019 AS VARCHAR);

-- �ܾ� ������ġ 0���� ����(C#)�� �ƴ϶� 1���� ����(DB)
SELECT CHARINDEX('world', 'Hello world');

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL SERVER 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('���ѹα�����!',5,2);

SELECT LEN('HELLO WORLD');

SELECT LOWER('HELLO WORLD');

SELECT UPPER('heldfoasdf');

SELECT LTRIM('      ASD     1');
SELECT RTRIM('1      ASD     ');
SELECT TRIM('      ASD     ');

-- REPLACE ���� �ֻ�
SELECT REPLACE('SQL SERVER 2017','SERVER','����');

SELECT FORMAT(GETDATE(), 'dd/MM/yyyy'); 