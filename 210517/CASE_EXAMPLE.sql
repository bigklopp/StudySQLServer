-- 구매한 금액에 따라서 최우수/우수/일반 고객으로 분류하는 쿼리를 작성하라
WITH cte_custlevel([사용자아이디], [회원명], [총 구매 금액], [고객 등급])
AS
(
SELECT u.userID, u.name 
     , IIF(SUM(b.PRICE * b.AMOUNT) IS NULL,
	 0,
	 SUM(b.PRICE * b.AMOUNT)) AS [총 구매 금액] 
	 , CASE 
			WHEN (SUM(b.PRICE * b.AMOUNT) > 1500) THEN '최우수 고객'
			WHEN (SUM(b.PRICE * b.AMOUNT) > 1000) THEN '우수 고객'
			WHEN (SUM(b.PRICE * b.AMOUNT) >= 1) THEN '일반 고객'
			ELSE '유령 고객'
		END AS '고객 분류'
	   FROM buyTbl AS b
  RIGHT OUTER JOIN userTbl AS u
    ON u.userID=b.userID
 GROUP BY u.userID, u.name
 --ORDER BY SUM(b.price * b.amount) DESC
)

SELECT [사용자아이디], [회원명]
     , FORMAT([총 구매 금액], 'C4')
	 , [고객 등급] 
	 FROM cte_custlevel
 ORDER BY [총 구매 금액] DESC;