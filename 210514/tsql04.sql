-- �����Լ�
SELECT name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL
 ORDER BY height DESC;
 
SELECT CAST(RANK() OVER(ORDER BY height DESC) AS VARCHAR), * FROM USERTBL;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY SUM(PRICE*AMOUNT) DESC) AS '���ż���'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;


