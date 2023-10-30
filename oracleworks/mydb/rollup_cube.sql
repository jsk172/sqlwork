-- ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(30),
    salary NUMBER
);

INSERT INTO tbl_dept VALUES('100', '���ǻ�', 3300000);
INSERT INTO tbl_dept VALUES('100', '������', 4300000);
INSERT INTO tbl_dept VALUES('100', '������', 2500000);
INSERT INTO tbl_dept VALUES('200', '���ǻ�', 5000000);
INSERT INTO tbl_dept VALUES('200', '�����ͺм���', 4000000);
INSERT INTO tbl_dept VALUES('200', '������', 6000000);

select * from tbl_dept;
-- �μ� ��ü�� �ο����� �޿� �հ�
select count(*) �ο���, SUM(salary) �޿��հ� from tbl_dept;
-- �μ���, �����̸��� �ο��� �� �޿��հ�
select dept_no, job_nm, count(*) �ο���, SUM(salary) �޿��հ� from tbl_dept group by dept_no, job_nm;

-- �μ���, �����̸��� �ο��� �� �޿��հ�(�Ұ�, �Ѱ�)
select dept_no, job_nm, count(*) �ο���, SUM(salary) �޿��հ� from tbl_dept 
group by rollup(dept_no, job_nm);

-- �μ���, �����̸��� �ο��� �� �޿��հ�(�Ұ�, �Ѱ�)
select dept_no, job_nm, count(*) �ο���, SUM(salary) �޿��հ� from tbl_dept 
group by cube(dept_no, job_nm)
order by dept_no;

-- �μ���, �����̸��� �ο��� �� �޿��հ�(�Ұ�, �Ѱ�)
select dept_no, job_nm, count(*) �ο���, SUM(salary) �޿��հ� from tbl_dept 
group by grouping sets(dept_no, job_nm)
order by dept_no;


commit;
