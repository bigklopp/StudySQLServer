-- GROUP BY
-- 아이디 별로 물건을 몇 개나 샀는지 조회
SELECT DISTINCT userID FROM buyTbl;

SELECT userID FROM buyTbl
 GROUP BY userID;

SELECT userID, SUM(amount*price) FROM buyTbl
 GROUP BY userID;

SELECT * FROM buyTbl;

SELECT userID, SUM(amount*price) AS '총구매금액'
  FROM buyTbl
 GROUP BY userID;

-- 평균 구매 금액
SELECT AVG(price*1.0) AS [평균 구매 금액] FROM buyTbl;

-- 사용자 테이블에서 키가 가장 큰, 작은 사람 조회
SELECT name AS '이름', height AS [키] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
    OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY 와 HAVING 절
SELECT userID AS '사용자 ID'
     , SUM( price * amount ) AS [총구매금액] 
  FROM buyTbl
-- WHERE SUM(price * amount) >=1000 절대 불가
-- WHERE절에는 column만 들어가야 한다. 집계 함수 불가
-- WHERE 뒤에 GROUP BY 뒤에 HAVING을 써야한다.
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000;
                  
-- 통계

SELECT groupName
     , userID
     , SUM( price * amount ) AS [총구매금액] 
  FROM buyTbl
 GROUP BY groupName, userID;

SELECT groupName
     , userID
     , SUM( price * amount ) AS [총구매금액] 
  FROM buyTbl
 GROUP BY ROLLUP(groupName, userID);

 SELECT groupName
     , userID
     , SUM( price * amount ) AS [총구매금액] 
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName);

SELECT groupName
     , userID
     , SUM( price * amount ) AS [총구매금액] 
	 , GROUPING_ID(groupName) AS 'CUBE 레코드'
  FROM buyTbl
 GROUP BY CUBE(groupName,  userID);

SELECT groupName
     , userID
     , SUM( price * amount ) AS [총구매금액] 
  FROM buyTbl
 GROUP BY CUBE(groupName,  userID);