-- [스키마(=데이터베이스)를 만들겠다]
-- CREATE SCHEMA IF NOT EXISTS 스키마명; 

-- [스키마를 사용하겠다]
-- USE 스키마명;

-- [테이블 정보 확인]
-- SELECT * FROM 테이블명;

-- [테이블 구조 확인] 
-- DESC 테이블명;   
-- DESCRIBE 테이블명;

-- [테이블이 존재하면 삭제]
-- DROP TABLE IF EXISTS 테이블명;

-- [테이블이 존재하지 않으면 생성]
-- CREATE TABLE IF NOT EXISTS 테이블명;

-- [ALTER 문을 사용하여 테이블 구조 변경]
-- ALTER TABLE 테이블명 CHANGE COLUMN 기존컬럼명 새컬럼명 데이터타입;
-- ALTER TABLE 테이블명 DROP COLUMN 열명;

-- ALTER TABLE 테이블명 DROP CONSTRAINT 외래키제약명;

/*
	TINYBLOB  	2^8 - 1 [256bytes]
	BLOB	  	2^16-1  [64KB]
	MEDIUMBLOB 	2^24 -1 [8MB]
	LONGBLOB	2^32 -1 [4GB]
*/

-- ===================================================== 