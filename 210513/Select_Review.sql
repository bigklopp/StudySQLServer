-- ������ ��ȸ
SELECT DISTINCT addr FROM userTbl;

-- Ű�� 180�̻��̰� ����⵵�� 1970������ ���
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;

-- NULL ���� �ƴ� ���ڵ��� ���� ��ȸ COUNT
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(mobile1) FROM userTbl;
