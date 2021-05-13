INSERT INTO TestTbl VALUES ('홍길동', '서울');
INSERT INTO TestTbl (userName, addr) VALUES ('설현', '서울');
INSERT INTO TESTTBL VALUES  ('아이유','서울');
INSERT INTO TESTTBL (addr, userName) VALUES ('세종', '김형욱');

INSERT INTO testTbl (userName) VALUES ('홍홍홍');

SELECT * FROM TestTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993, '서울');

SELECT * FROM USERTBL;--WHERE USERID='IU';

INSERT INTO USERTBL (userID, name, birthYear, addr, height)
VALUES ('JJH', '주지훈', 1982, '신안', 187);
