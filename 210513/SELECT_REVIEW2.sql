-- 통합

BEGIN TRAN;

SELECT * FROM testTbl;

--데이터 입력
INSERT INTO testTbl VALUES ('최우식', '캐낟');

--데이터 수정
UPDATE testTbl
   SET userName = '이지은'
     , addr = '서울'
 WHERE id = 4;

DELETE FROM testTbl WHERE userName = '홍길동';

SELECT * FROM testTbl;

ROLLBACK;
COMMIT;
--COMMIT;
--ROLLBACK;