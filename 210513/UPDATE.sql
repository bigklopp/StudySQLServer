-- UPDATE 할 때 WHERE절을 빼먹지 말자.
 
-- 트랜잭션 시작
BEGIN TRAN -- TRANSACTION

UPDATE testTbl
   SET userName = '김형욱'
 WHERE id = 25;

UPDATE testTbl
   SET userName = '성명건'
     , addr = '부산'
 WHERE id = 5;

SELECT * FROM testTbl;


COMMIT;
ROLLBACK;

-- 데이터 전부를 삭제하고 id 인덱스 번호 다시 1부터 시작
TRUNCATE TABLE testTbl; 