-- 데이터 조회
SELECT DISTINCT addr FROM userTbl;

-- 키가 180이상이고 출생년도가 1970이후인 사람
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;

-- NULL 값이 아닌 레코드의 개수 조회 COUNT
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(mobile1) FROM userTbl;

-- 출생 연도 순(오름차순)으로 정렬해서 조회
SELECT * FROM userTbl
 ORDER BY birthYear DESC;

-- SELECT INTO : buyTbl을 buyTbl2(새로 만듦)에 복사.
-- 새로고침하면 보인다.
SELECT * INTO buyTbl2 FROM buyTbl;
SELECT * FROM buyTbl2;

-- SELECT INTO : 
SELECT userID, prodName INTO buyTbl3 FROM buyTbl;
SELECT * FROM buyTbl3;