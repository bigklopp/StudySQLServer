-- 내부 조인
SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1,u.mobile2) AS mobile
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID=b.userID
 ORDER BY u.userID

-- LEFT 외부 조인
SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1,u.mobile2) AS mobile
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID

-- RIGHT 외부 조인
SELECT u.userID, u.name, u.addr
     , b.prodName, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID

 -- 학생 / 동아리/ 가입정보 테이블
 -- OUTERJOIN
SELECT s.stdID, s.stdName, s.Region
     , r.ClubName, c.clubroom, r.RegDate
  FROM stdTbl AS s
  INNER JOIN regInfoTbl AS r
    ON s.stdID = r.stdID
  INNER JOIN clubTbl AS c 
    ON c.clubName = r.clubName

	SELECT *
  FROM clubTbl

SELECT *
  FROM clubTbl AS c
  LEFT OUTER JOIN regInfoTbl AS r
    ON c.clubName = r.ClubName
  LEFT OUTER JOIN stdTbl AS s
    ON r.stdID = s.stdID
 ORDER BY c.clubRoom

