-- GROUP BY
-- ���̵� ���� ������ �� ���� ����� ��ȸ
SELECT DISTINCT userID FROM buyTbl;

SELECT userID FROM buyTbl
 GROUP BY userID;

SELECT userID, SUM(amount*price) FROM buyTbl
 GROUP BY userID;

SELECT * FROM buyTbl;

SELECT userID, SUM(amount*price) AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY userID;

-- ��� ���� �ݾ�
SELECT AVG(price*1.0) AS [��� ���� �ݾ�] FROM buyTbl;

-- ����� ���̺��� Ű�� ���� ū, ���� ��� ��ȸ
SELECT name AS '�̸�', height AS [Ű] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY �� HAVING ��
SELECT userID AS '����� ID'
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
  FROM buyTbl
-- WHERE SUM(price * amount) >=1000 ���� �Ұ�
-- WHERE������ column�� ���� �Ѵ�. ���� �Լ� �Ұ�
-- WHERE �ڿ� GROUP BY �ڿ� HAVING�� ����Ѵ�.
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000;
                  
-- ���

SELECT groupName
     , userID
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY groupName, userID;

SELECT groupName
     , userID
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY ROLLUP(groupName, userID);

 SELECT groupName
     , userID
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName);

SELECT groupName
     , userID
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
	 , GROUPING_ID(groupName) AS 'CUBE ���ڵ�'
  FROM buyTbl
 GROUP BY CUBE(groupName,  userID);

SELECT groupName
     , userID
     , SUM( price * amount ) AS [�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY CUBE(groupName,  userID);