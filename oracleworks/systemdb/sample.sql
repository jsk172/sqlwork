-- user 계정 : test, 비번 : pwtest
CREATE USER c##sample IDENTIFIED BY pw1234;
--SESSION 권한(로그인-인증) 부여
GRANT CREATE SESSION TO c##sample;
-- DB의 테이블 생성 권한 부여
GRANT CREATE TABLE, RESOURCE TO c##sample; --테이블생성 가능
-- 데이터 조작할 모든 권한 부여 : DML(삽입, 조회, 수정, 삭제)
GRANT CONNECT, DBA TO c##sample; -- 인서트 가능