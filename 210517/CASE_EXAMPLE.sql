-- ������ �ݾ׿� ���� �ֿ��/���/�Ϲ� ������ �з��ϴ� ������ �ۼ��϶�
WITH cte_custlevel([����ھ��̵�], [ȸ����], [�� ���� �ݾ�], [�� ���])
AS
(
SELECT u.userID, u.name 
     , IIF(SUM(b.PRICE * b.AMOUNT) IS NULL,
	 0,
	 SUM(b.PRICE * b.AMOUNT)) AS [�� ���� �ݾ�] 
	 , CASE 
			WHEN (SUM(b.PRICE * b.AMOUNT) > 1500) THEN '�ֿ�� ��'
			WHEN (SUM(b.PRICE * b.AMOUNT) > 1000) THEN '��� ��'
			WHEN (SUM(b.PRICE * b.AMOUNT) >= 1) THEN '�Ϲ� ��'
			ELSE '���� ��'
		END AS '�� �з�'
	   FROM buyTbl AS b
  RIGHT OUTER JOIN userTbl AS u
    ON u.userID=b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price * b.amount) DESC
)

SELECT [����ھ��̵�], [ȸ����]
     , FORMAT([�� ���� �ݾ�], 'C4')
	 , [�� ���] 
	 FROM cte_custlevel
 ORDER BY [�� ���� �ݾ�] DESC;