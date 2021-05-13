-- 데이터 조회
SELECT DISTINCT addr FROM userTbl;

-- 키가 180이상이고 출생년도가 1970이후인 사람
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;

-- NULL 값이 아닌 레코드의 개수 조회 COUNT
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(mobile1) FROM userTbl;
