-- emp 테이블
CREATE TABLE emp(
    empno NUMBER(3) PRIMARY KEY, -- 사원번호
    ename VARCHAR2(20) NOT NULL, -- 사원이름
    gender VARCHAR(6) NOT NULL,  -- 성별
    salary NUMBER(10),           -- 급여
    hire_date VARCHAR2(20) NOT NULL -- 입사일
);

INSERT INTO emp VALUES(100, '이강', '남자', 3000000, '2019-01-01');
INSERT INTO emp VALUES(101, '김산', '여자', 2500000, '2020-05-15');
INSERT INTO emp VALUES(102, '오상식', '남자', 5000000, '2015-02-22');
INSERT INTO emp VALUES(103, '박신입', '여자', null, '2023-10-01');

-- 실습문제 풀이
/*
1. 사원을 입사일 순으로 정렬(오름차순)
2. 사원을 급여 순으로 정렬(오름차순)
3. 급여가 300만원 이하인 사원을 급여가 많은순으로 정렬
4. 급여가 없는 사원을 검색
5. 사원의 총 수 구하기
6. 사원의 급여 합계의 평균 구하기
7. 이름이 김산인 사원의 성별을 남자로 변경
8. 이름이 오상식인 사원을 삭제
*/

--1
SELECT * FROM emp ORDER BY hire_date ASC;
--2
SELECT * FROM emp ORDER BY salary ASC;
--3
SELECT * FROM emp WHERE salary <= 3000000 ORDER BY salary DESC;
--4
SELECT * FROM emp WHERE salary IS NULL;
--5
SELECT COUNT(*) 사원의총수 FROM emp;
--6
SELECT AVG(salary) 급여합계평균 FROM emp;
--7
UPDATE emp SET gender = '남자' WHERE ename = '김산';
--8
DELETE FROM emp WHERE ename = '오상식';

--반올림 : ROUND(숫자, 자리수)
SELECT ename 사원이름, salary 월급, 
ROUND(salary/30, 0) 일급
FROM emp;

SELECT * FROM emp;

-- 급여가 가장 많은 사원을 검색
SELECT ename,salary FROM emp 
WHERE SALARY = (SELECT MAX(salary) FROM emp) OR SALARY = (SELECT MIN(salary) from emp);

rollback;
commit;