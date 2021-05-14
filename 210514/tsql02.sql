--�ý��� �Լ�(SQL������ �⺻���� �������ִ� �Լ���)
--SELECT AVG(CAST(amount AS DECIMAL(10,6))) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- TRY_PARSE�� ���� �ѱ�� �ۼ�.

SELECT name, CAST(height AS CHAR) + 'cm' FROM userTbl
 WHERE height IS NOT NULL;

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);

SELECT GETDATE();

SELECT @@VERSION;

-- ��¥ �� �ð��Լ� 
SELECT YEAR(GETDATE()) AS '���� ����';
SELECT MONTH(GETDATE()) AS '���� ��';
SELECT DAY(GETDATE()) AS '����';

-- ��ġ �Լ�
SELECT ABS(-19);
SELECT ROUND(20.44,-1);
SELECT FLOOR(RAND() * 100);

-- �� �Լ�
SELECT IIF(100 > 200, '��', '����');


