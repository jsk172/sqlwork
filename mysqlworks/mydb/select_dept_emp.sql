select * from department;
select * from employee;
-- 삽입 오류 : 부서 테이블에 아이디가 30이 없어서 에러
insert into employee values(106, '양신입', 25, null, 30);

-- 급여가 4,000,000 이상이고 부서번호가 10인 사원 검색
select * from employee where sal >= 3000000 and deptid = 10;
-- 급여가 많은 순으로 정렬
select * from employee order by sal desc;
-- 사원의 총 인원, 급여 총액, 급여 평균을 구하시오
select count(*) "사원 수", sum(sal) "급여 총액", round(avg(sal), -2) "급여 평균" 
from employee;
-- 부서별 급여총액을 구하시오
select deptid, sum(sal) "급여 총액" from employee group by deptid;
-- 부서이름을 포함한 사원의 모든 정보를 검색하시오(조인)
select dept.deptname, emp.* from department dept, employee emp 
where dept.deptid = emp.deptid;
-- 부서별, 부서이름별 급여 총액, 소계, 통계
select a.deptid, a.deptname, sum(b.sal) 급여총액, round(avg(b.sal), -2) 급여평균
from department a join employee b on a.deptid = b.deptid
group by deptid, deptname with rollup;
-- 최고 급여와 최저 급여를 받는 사원정보 검색
select * from employee 
where sal = (select max(sal) from employee) 
or sal = (select min(sal) from employee);
-- 백두산 사원의 급여를 430만원으로 수정
update employee set sal = 4300000 where empid = 102;
-- 사원의 급여 순위를 구하시오
select empname, sal, rank() over(order by sal desc) 급여순위, 
dense_rank() over(order by sal desc) 급여순위2 
from employee;