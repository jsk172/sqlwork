-- 사원 테이블 생성
CREATE TABLE employee(
    empid   NUMBER(3),
    empname VARCHAR2(20) NOT NULL,
    age NUMBER(3),
    deptid NUMBER,
    
    PRIMARY KEY(empid), -- 기본키
    FOREIGN KEY(deptid) REFERENCES department(deptid)-- 외래키
);

-- 사원 자료 추가
INSERT INTO employee(empid, empname, age, deptid) VALUES(101, '이강', 27, 10);
INSERT INTO employee(empid, empname, age, deptid) VALUES(102, '김산', 33, 30); --부서코드가 없어서 외래키 위배
INSERT INTO employee(empid, empname, deptid) VALUES(103, '정들', 20);
INSERT INTO employee(empid, empname, age, deptid) VALUES(104, '남한강', 41, 20);

-- 사원의 모든 정보 출력
SELECT * FROM employee;
-- 사원이름과 나이 출력
SELECT empid, age FROM employee;
-- 사원이름이 '강산'인 데이터 출력
SELECT * FROM employee WHERE empname = '김산';
-- 나이가 30이상인 사원 검색
SELECT * FROM employee WHERE age > 30;
-- 부서번호가 20인 사원 검색
SELECT * FROM employee WHERE deptid = 20;
-- 나이가 입력되지 않은 사원 검색
SELECT * FROM employee WHERE age IS NULL;

-- 문자열 검색 (사원 이름에서 "강"을 포함하는 사원 검색) - LIKE '%포함하고싶은내용%'
SELECT * FROM employee WHERE empname LIKE '%강%';

-- 문자열 검색 (사원 이름에서 "강"을 포함하고 나이가 입력되지 않은 사원 검색)
SELECT * FROM employee WHERE empname LIKE '%강%' OR age IS NULL; -- AND // OR 사용가능

COMMIT;

DROP TABLE employee;