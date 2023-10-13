-- 조건에 관한 함수
-- DECODE(칼럼명, 조건, 참인값, 거짓인값)
-- 성별이 남자이면 'M', 여자이면 'F'로 출력

SELECT ename 사원이름, gender 성별,
DECODE(gender, '남자', 'M', 'F') gender
FROM emp;

-- 조건 구문(IF-ElSE유사)
/*
    CASE
        WHEN 조건1   THEN 결과1
        WHEN 조건2   THEN 결과2
        ELSE 결과3
    END 칼럼명
*/
SELECT ename 사원이름, gender 성별,
CASE
    WHEN gender='남자' THEN 'M'
    ELSE 'F'
END gender
FROM emp;

SELECT * FROM emp;

-- 급여에 따른 직급 표시
-- 급여가 350만원 이상이면 직급 = '과장'
-- 급여가 250만원 이상이면 직급 = '대리'
-- 나머지 = '사원'
SELECT ename 사원이름, salary 월급,
CASE
    WHEN salary >= 3500000 THEN '과장'
    WHEN salary >= 2500000 THEN '대리'
    ELSE '사원'
END 직급
FROM emp;

SELECT COUNT(salary) FROM emp; -- salary 개수
-- null값에 0을 표시(NVL - NULL VALUE)
-- NVL(인수1, 인수2) : 인수1이 NULL이 아니면 인수1 출력 인수1이 NULL이면 인수2를 출력
SELECT ename,
NVL(salary, 0)
from emp;

-- 실습 테이블 생성
CREATE TABLE k1(
 ID VARCHAR2(3),
 CNT NUMBER(2)
);
INSERT INTO k1 VALUES('가', 5);
INSERT INTO k1 VALUES('나', NULL);
INSERT INTO k1 VALUES('다', 5);
INSERT INTO k1 VALUES('라', null);
INSERT INTO k1 VALUES('마', 10);
SELECT * FROM K1;

SELECT NVL(cnt, 0) FROM k1;
SELECT COUNT(cnt) FROM k1;
SELECT COUNT(NVL(cnt,0)) FROM k1;

SELECT SUM(cnt)/COUNT(cnt) FROM k1;
SELECT SUM(cnt)/ COUNT(NVL(cnt,0)) FROM k1;
SELECT AVG(cnt)/COUNT(NVL(cnt,0)) FROM k1;

SELECT MIN(NVL(CNT, 5)) FROM k1;

commit;