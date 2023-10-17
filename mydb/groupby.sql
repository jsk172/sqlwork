-- department 테이블 생성
CREATE TABLE department(
    deptno VARCHAR2(4) primary key,
    deptname VARCHAR2(20) NOT NULL,
    office VARCHAR2(20)
);

INSERT INTO department VALUES  ('1000', '인사팀', '서울');
INSERT INTO department VALUES  ('1001', '전산팀', '인천');
INSERT INTO department VALUES  ('1002', '전산팀', '수원');
INSERT INTO department(deptno, deptname) VALUES  ('1003', '영업팀');

commit;


-- employee 테이블 생성
CREATE TABLE employee(
    empno   NUMBER(3) PRIMARY KEY,
    empname VARCHAR2(20) NOT NULL,
    salary NUMBER(10),
    createdate DATE DEFAULT SYSDATE,
    deptno VARCHAR2(4),
    
    FOREIGN KEY(deptno) REFERENCES department(deptno)-- 외래키
);

INSERT INTO employee VALUES(100, '이강', 2500000, SYSDATE, '1000');
INSERT INTO employee VALUES(101, '김신', 2000000, SYSDATE, '1001');
INSERT INTO employee VALUES(102, '박달', 3000000, SYSDATE, '1002');
INSERT INTO employee VALUES(103, '강태양', 3500000, SYSDATE, '1000');
INSERT INTO employee VALUES(104, '최우주', 5000000, SYSDATE, '1001');
INSERT INTO employee VALUES(105, '우영우', 4000000, SYSDATE, '1002');



select * from employee;
-- 부서별 급여 총액을 구하시오
select deptno, SUM(salary) from employee group by deptno;
-- 부서이름과 부서별 급여 총액을 출력(employee, department 테이블 사용(동등조인))
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by a.deptno, a.deptname;
--ROLLUP(칼럼) : GROUP BY절에서 소계, 총계를 만듦
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by ROLLUP(a.deptno, a.deptname);
--CUBE(칼럼1, 칼럼2) : group by절에서 모든 소계,총계를 입체적으로 만듦
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by CUBE(a.deptno, a.deptname);

-- '1002'부서이름 '총무팀'으로 변경
UPDATE department SET deptname = '총무팀'
WHERE deptno = 1002;
-- 강태양 사원의 급여 3000000으로 변경
UPDATE employee SET salary = 3000000 where empname = '강태양';

-- SUM(칼럼명) OVER(ORDER BY 칼럼명) - 누적합계
-- 칼럼명 영어 소문자로 표기할때 쌍따움표로 바꿔줌
-- 순위 RANK() 함수
select empno, empname, salary, SUM(salary) OVER(ORDER BY empno) "sal_sum", 
RANK() OVER(ORDER BY salary DESC) 급여순위  from employee;

-- 순위 RANK() 함수
select empno, empname, salary, RANK() OVER(ORDER BY salary DESC) 급여순위,
DENSE_RANK() OVER(ORDER BY salary DESC) 급여DENSE_RANK
from employee;

commit;