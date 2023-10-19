-- ex4 테이블 생성
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003', 'u1234');
INSERT INTO ex4 VALUES ('sky2003', 'u54321'); --무결서 제약 조건 위배
INSERT INTO ex4 VALUES ('today123', 'U2345', 25);
INSERT INTO ex4(id, pwd, age) VALUES ('today321', 'u3456', 20);
--pwd에 대한 값이 너무 큼 최대 10자 MODIFY로 크기 변경 해주고 실행하면 됨.
INSERT INTO ex4(id, pwd, age) VALUES ('today0123', 'u1234567890', 23);

COMMIT;

-- 나이(age) 칼럼 추가
ALTER TABLE ex4 ADD age NUMBER(3);

-- 자료형의 크기 변경(VARCHAR2의 크기를 10 -> 12)
ALTER TABLE ex4 MODIFY pwd VARCHAR2(12);

SELECT * FROM ex4;