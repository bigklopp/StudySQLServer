USE sqlDB;
GO

/*
SELECT * FROM userTbl
 WHERE addr = '서울';
 
-- 사용자 테이블에서 출생년도 1970~1980, 키가 180 이상인
-- 사람을 조회.
SELECT * FROM userTbl
 WHERE birthYear > 1970 AND birthYear < 1980
   AND height >= 180;*/

-- 출생년도가 1970년 이후이거나 키가 182 이상인
-- 사람 조회
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND height >= 182;

SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1971 AND 1979
   AND height >= 180;

-- 사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT name, userID, addr FROM userTbl
 WHERE addr = '경남' OR addr = '전남' OR addr = '경북';

SELECT name, userID, addr FROM userTbl
 WHERE addr IN ('경남', '전남', '경북');

-- 사용자 중에 김씨 성을 가진 사람
SELECT name,height FROM userTbl
 WHERE name LIKE '김%';

 -- 사용자 중에 이름이 종신인 사람 아르테타 종신
SELECT * FROM userTbl
 WHERE name LIKE '_용__';
 
 -- 서브 쿼리 SubQuery
SELECT * FROM userTbl
 WHERE height >= (SELECT height FROM userTbl WHERE Name = '김경호');

 SELECT name, height FROM userTbl
  WHERE height >= ANY (SELECT height FROM userTbl WHERE addr = '경남');
  
  -- 서브쿼리 ANY와 IN

 SELECT name, height FROM userTbl
  WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '경남');

 SELECT name, height FROM userTbl
  WHERE height IN (SELECT height FROM userTbl WHERE addr = '경남');

  -- ORDER BY
 SELECT * FROM userTbl
  ORDER BY mobile1, addr DESC;

 -- userTbl에 몇 개의 데이터(레코드)가 있는지 확인
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