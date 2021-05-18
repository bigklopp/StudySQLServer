-- VIEW
CREATE VIEW v_userTbl
AS 
	SELECT userID, name, addr FROM userTbl;
GO

SELECT userID, name, addr FROM v_userTbl;

SELECT * FROM v_buyTbl;


CREATE VIEW v_userbuyInfo
AS
SELECT u.userID, u.name, b.prodName, b.price
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
GO

SELECT * FROM v_userbuyInfo
 ORDER BY price DESC;

DROP VIEW v_userTbl;