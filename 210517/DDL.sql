USE sampleDB;
GO

CREATE TABLE userTbl
(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);

CREATE TABLE buyTbl
(
	num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL
	FOREIGN KEY REFERENCES userTbl(userID),
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL,
);

CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL,
	prodId NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL
	CONSTRAINT PK_prodTbl_prodCode_prodIIDD
		PRIMARY KEY (prodCode, prodId)
);
GO

ALTER TABLE userTbl
  ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK 제약 조건
ALTER TABLE userTbl
  ADD CONSTRAINT CK_birthYear
CHECK (birthYear>= 1900 AND birthYear <= YEAR(GETDATE()));

ALTER TABLE userTbl
      ADD CONSTRAINT CK_height
	  CHECK (height >= 0)