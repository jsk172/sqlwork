-- ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(30),
    salary NUMBER
);

INSERT INTO tbl_dept VALUES('100', '증권사', 3300000);
INSERT INTO tbl_dept VALUES('100', '관리자', 4300000);
INSERT INTO tbl_dept VALUES('100', '관리자', 2500000);
INSERT INTO tbl_dept VALUES('200', '증권사', 5000000);
INSERT INTO tbl_dept VALUES('200', '데이터분석가', 4000000);
INSERT INTO tbl_dept VALUES('200', '관리자', 6000000);

select * from tbl_dept;
-- 부서 전체의 인원수의 급여 합계
select count(*) 인원수, SUM(salary) 급여합계 from tbl_dept;
-- 부서별, 직업이름별 인원수 및 급여합계
select dept_no, job_nm, count(*) 인원수, SUM(salary) 급여합계 from tbl_dept group by dept_no, job_nm;

-- 부서별, 직업이름별 인원수 및 급여합계(소계, 총계)
select dept_no, job_nm, count(*) 인원수, SUM(salary) 급여합계 from tbl_dept 
group by rollup(dept_no, job_nm);

-- 부서별, 직업이름별 인원수 및 급여합계(소계, 총계)
select dept_no, job_nm, count(*) 인원수, SUM(salary) 급여합계 from tbl_dept 
group by cube(dept_no, job_nm)
order by dept_no;

-- 부서별, 직업이름별 인원수 및 급여합계(소계, 총계)
select dept_no, job_nm, count(*) 인원수, SUM(salary) 급여합계 from tbl_dept 
group by grouping sets(dept_no, job_nm)
order by dept_no;


commit;
