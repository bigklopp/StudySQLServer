--DELETE
--WHERE ���� �� ���� �������� ���� �ȴ�.
BEGIN TRAN;

DELETE FROM testTbl
 WHERE id = 4;

DELETE FROM testTbl
 WHERE userName = 'ȫ�浿';
 
SELECT * FROM testTbl;

--COMMIT;
--ROLLBACK;