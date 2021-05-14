SELECT * FROM buyTbl;
SELECT * FROM userTbl;

SELECT * FROM userTbl
 INNER JOIN buyTbl
    ON userTbl.userID = buyTbl.userID;

SELECT * FROM buyTbl
 INNER JOIN userTbl
    ON buyTbl.userID = userTbl.userID;

SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.userID = 'JYP';