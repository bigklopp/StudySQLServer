-- 3개 테이블 내부 조인
--SELECT * FROM stdTbl;
--SELECT * FROM clubTbl;

SELECT S.stdID, S.stdName, C.ClubName, C.ClubRoom, R.regDate
  FROM stdTbl AS S
 INNER JOIN reginfoTbl R
    ON S.stdID= R.stdID
 INNER JOIN clubTbl C
    ON R.clubName = C.clubName
 WHERE S.stdID = 'KBS'
 ORDER BY S.stdID;