USE sqlDB;
GO

/*
SELECT * FROM userTbl
 WHERE addr = '����';
 
-- ����� ���̺��� ����⵵ 1970~1980, Ű�� 180 �̻���
-- ����� ��ȸ.
SELECT * FROM userTbl
 WHERE birthYear > 1970 AND birthYear < 1980
   AND height >= 180;*/

-- ����⵵�� 1970�� �����̰ų� Ű�� 182 �̻���
-- ��� ��ȸ
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND height >= 182;

SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1971 AND 1979
   AND height >= 180;

-- ����� �߿� ������ �泲, ����, ����� ����� ��ȸ
SELECT name, userID, addr FROM userTbl
 WHERE addr = '�泲' OR addr = '����' OR addr = '���';

SELECT name, userID, addr FROM userTbl
 WHERE addr IN ('�泲', '����', '���');

-- ����� �߿� �达 ���� ���� ���
SELECT name,height FROM userTbl
 WHERE name LIKE '��%';

 -- ����� �߿� �̸��� ������ ��� �Ƹ���Ÿ ����
SELECT * FROM userTbl
 WHERE name LIKE '_��__';
 
 -- ���� ���� SubQuery
SELECT * FROM userTbl
 WHERE height >= (SELECT height FROM userTbl WHERE Name = '���ȣ');

 SELECT name, height FROM userTbl
  WHERE height >= ANY (SELECT height FROM userTbl WHERE addr = '�泲');
  
  -- �������� ANY�� IN

 SELECT name, height FROM userTbl
  WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '�泲');

 SELECT name, height FROM userTbl
  WHERE height IN (SELECT height FROM userTbl WHERE addr = '�泲');

  -- ORDER BY
 SELECT * FROM userTbl
  ORDER BY mobile1, addr DESC;

 -- userTbl�� �� ���� ������(���ڵ�)�� �ִ��� Ȯ��
 SELECT COUNT(*) FROM userTbl;
 SELECT COUNT(*) FROM buyTbl;
  

 SELECT DISTINCT addr FROM userTbl;

 -- TOP
USE AdventureWorksLT2019;
GO

SELECT TOP 10 LastName FROM SalesLT.Customer;
SELECT TOP (10) * FROM SalesLT.Customer;

SELECT TOP 10 PERCENT *
  FROM SalesLT.Customer
 --WHERE Title = 'Ms.'
 ORDER BY CustomerID DESC;

SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);

SELECT * FROM SalesLT.Customer
 ORDER BY CustomerID
OFFSET 5 ROWS
FETCH NEXT 3 ROWS ONLY;