-- 학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    age NUMBER(2) NOT NULL,
    gender VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    mname VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname)
);

-- 학생 추가
INSERT INTO student VALUES(1001, '이강', 21, '여자', '서울시 강서구', '소프트웨어학과');
INSERT INTO student VALUES(1002, '박대양', 22, '남자', '인천시 남구', '전기전자공학과');
INSERT INTO student VALUES(1003, '우영우', 26, '여자', '', '전기전자공학과');
INSERT INTO student VALUES(1004, '우영우1', 26, '여자', ' ', '전기전자공학과');
-- 부모키에 없는 데이터는 삽입 이상 발생
INSERT INTO student VALUES(1003, '김산', 24, '남자', '서울시 동대문구', '회계학과');

-- 전체 학생 조회
SELECT * FROM student;

-- 이름이 '이강'인 학생의 이름과 나이 조회
SELECT sname, age FROM student WHERE sname = '이강'; 
-- 이름에 '우'가 포함된 학생의 모든 정보를 출력하세요
SELECT * FROM student WHERE sname LIKE '%우%';
-- 나이가 20이상이고 성별이 남자인 학생의 모든 정보 출력
SELECT * FROM student WHERE gender = '남자' AND age >= 20;
-- 주소가 없는 학생의 정보를 출력
SELECT * FROM student WHERE address IS NULL;
-- 주소가 없는 학생의 정보 삭제
DELETE FROM student WHERE address IS NULL;
DELETE FROM student WHERE address = ' ';
-- 주소가 NULL인 데이터에 '수원시 영통구'로 입력
UPDATE student SET address = '수원시 영통구' WHERE address IS NULL;
-- 학생의 나이가 적은 순으로 정렬
SELECT * FROM student ORDER BY age;
-- 학생의 나이가 많은 순으로 정렬
SELECT * FROM student ORDER BY age DESC;
-- 학과명이 전기전자공학과 학생중에서 나이가 많은 순으로 정렬
SELECT * FROM student WHERE mname = '전기전자공학과' ORDER BY age DESC;

ROLLBACK;
DROP TABLE student;
commit;