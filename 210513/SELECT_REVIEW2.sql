-- ����

BEGIN TRAN;

SELECT * FROM testTbl;

--������ �Է�
INSERT INTO testTbl VALUES ('�ֿ��', 'ĳ��');

--������ ����
UPDATE testTbl
   SET userName = '������'
     , addr = '����'
 WHERE id = 4;

DELETE FROM testTbl WHERE userName = 'ȫ�浿';

SELECT * FROM testTbl;

ROLLBACK;
COMMIT;
--COMMIT;
--ROLLBACK;