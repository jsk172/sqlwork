-- JOB_INFO 테이블 생성
CREATE TABLE JOB_INFO(
    JOB_ID VARCHAR(10), -- 직업 아이디
    MIN_SALARY NUMBER, -- 최저 급여
    MAX_SALARY NUMBER -- 최고 급여
);

INSERT INTO JOB_INFO VALUES('AD_PASS', 20000, 40000);
INSERT INTO JOB_INFO VALUES('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO VALUES('AD_ASST', 3000, 6000);
INSERT INTO JOB_INFO VALUES('FI_MGR', 8000, 16000);
INSERT INTO JOB_INFO VALUES('FI_ACCOUNT', 4000, 9000);
INSERT INTO JOB_INFO VALUES('AC_MGR', 8000, 16000);
INSERT INTO JOB_INFO VALUES('AC_ACCOUNT', 4000, 9000);

select * from job_info;
-- 최저급여, 최고급여의 평균을 구하시오
select ROUND(AVG(MIN_Salary),-1) 최저금액평균, ROUND(AVG(MAX_Salary),-1) 최고금액평균
from job_info;
-- 최저급여가 5000달러 이상인 정보 검색
select * from job_info WHERE min_salary >= 5000;
-- 최저 급여가 5000달러 이상인 정보를 검색한 뷰 생성
CREATE VIEW V_JOB_INFO
AS SELECT *
   FROM JOB_INFO
   WHERE MIN_SALARY >= 5000;

SELECT * FROM V_JOB_INFO;

-- 최고 급여와 최저 급여의 차가 10000달러 이상인 직업 아이디를 검색
SELECT JOB_ID FROM V_JOB_INFO WHERE max_salary - min_salary >=10000;
-- 직업 아이디의 이름이 FI로 시작하는 자료를 검색
SELECT * FROM V_JOB_INFO WHERE JOB_ID LIKE 'FI%';
-- MAX_SALARY 가 최고인 직업 ID 검색
SELECT JOB_ID FROM V_JOB_INFO 
WHERE MAX_salary = (SELECT MAX(MAX_salary) FROM V_JOB_INFO);

DROP VIEW V_JOB_INFO;
commit;