-- ������ ��ȸ
SELECT DISTINCT addr FROM userTbl;

-- Ű�� 180�̻��̰� ����⵵�� 1970������ ���
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;

-- NULL ���� �ƴ� ���ڵ��� ���� ��ȸ COUNT
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(mobile1) FROM userTbl;

-- ��� ���� ��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear DESC;

-- SELECT INTO : buyTbl�� buyTbl2(���� ����)�� ����.
-- ���ΰ�ħ�ϸ� ���δ�.
SELECT * INTO buyTbl2 FROM buyTbl;
SELECT * FROM buyTbl2;

-- SELECT INTO : 
SELECT userID, prodName INTO buyTbl3 FROM buyTbl;
SELECT * FROM buyTbl3;