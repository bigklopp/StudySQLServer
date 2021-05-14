--시스템 함수(SQL서버가 기본으로 제공해주는 함수들)
--SELECT AVG(CAST(amount AS DECIMAL(10,6))) FROM buyTbl;
SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- 오류가 나면
SELECT TRY_PARSE('3.14' AS INT); -- TRY_PARSE로 오류 넘기고 작성.

SELECT name, CAST(height AS CHAR) + 'cm' FROM userTbl
 WHERE height IS NOT NULL;

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-05-14 10:28:10' AS DATETIME);

SELECT GETDATE();

SELECT @@VERSION;

-- 날짜 및 시간함수 
SELECT YEAR(GETDATE()) AS '현재 연도';
SELECT MONTH(GETDATE()) AS '현재 월';
SELECT DAY(GETDATE()) AS '오늘';

-- 수치 함수
SELECT ABS(-19);
SELECT ROUND(20.44,-1);
SELECT FLOOR(RAND() * 100);

-- 논리 함수
SELECT IIF(100 > 200, '참', '거짓');


