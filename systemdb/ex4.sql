-- ex4 테이블 생성
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003', 'u1234');
INSERT INTO ex4 VALUES ('sky2003', 'u54321'); --무결서 제약 조건 위배
INSERT INTO ex4 VALUES ('today123', 'U2345', 25);

COMMIT;

-- 나이(age) 칼럼 추가
ALTER TABLE ex4 ADD age NUMBER(3);

SELECT * FROM ex4;