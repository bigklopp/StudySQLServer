-- UPDATE �� �� WHERE���� ������ ����.
 
-- Ʈ����� ����
BEGIN TRAN -- TRANSACTION

UPDATE testTbl
   SET userName = '������'
 WHERE id = 25;

UPDATE testTbl
   SET userName = '�����'
     , addr = '�λ�'
 WHERE id = 5;

SELECT * FROM testTbl;


COMMIT;
ROLLBACK;

-- ������ ���θ� �����ϰ� id �ε��� ��ȣ �ٽ� 1���� ����
TRUNCATE TABLE testTbl; 