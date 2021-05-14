-- 순위함수
SELECT name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL
 ORDER BY height DESC;
 
SELECT CAST(RANK() OVER(ORDER BY height DESC) AS VARCHAR), * FROM USERTBL;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY SUM(PRICE*AMOUNT) DESC) AS '구매순위'
  FROM buyTbl
 GROUP BY userID
   FOR JSON AUTO;


