--DELETE
--WHERE 절을 안 쓰면 사유서를 쓰게 된다.
BEGIN TRAN;

DELETE FROM testTbl
 WHERE id = 4;

DELETE FROM testTbl
 WHERE userName = '홍길동';
 
SELECT * FROM testTbl;

--COMMIT;
--ROLLBACK;