-- department ���̺� ����
CREATE TABLE department(
    deptno VARCHAR2(4) primary key,
    deptname VARCHAR2(20) NOT NULL,
    office VARCHAR2(20)
);

INSERT INTO department VALUES  ('1000', '�λ���', '����');
INSERT INTO department VALUES  ('1001', '������', '��õ');
INSERT INTO department VALUES  ('1002', '������', '����');
INSERT INTO department(deptno, deptname) VALUES  ('1003', '������');

commit;


-- employee ���̺� ����
CREATE TABLE employee(
    empno   NUMBER(3) PRIMARY KEY,
    empname VARCHAR2(20) NOT NULL,
    salary NUMBER(10),
    createdate DATE DEFAULT SYSDATE,
    deptno VARCHAR2(4),
    
    FOREIGN KEY(deptno) REFERENCES department(deptno)-- �ܷ�Ű
);

INSERT INTO employee VALUES(100, '�̰�', 2500000, SYSDATE, '1000');
INSERT INTO employee VALUES(101, '���', 2000000, SYSDATE, '1001');
INSERT INTO employee VALUES(102, '�ڴ�', 3000000, SYSDATE, '1002');
INSERT INTO employee VALUES(103, '���¾�', 3500000, SYSDATE, '1000');
INSERT INTO employee VALUES(104, '�ֿ���', 5000000, SYSDATE, '1001');
INSERT INTO employee VALUES(105, '�쿵��', 4000000, SYSDATE, '1002');



select * from employee;
-- �μ��� �޿� �Ѿ��� ���Ͻÿ�
select deptno, SUM(salary) from employee group by deptno;
-- �μ��̸��� �μ��� �޿� �Ѿ��� ���(employee, department ���̺� ���(��������))
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by a.deptno, a.deptname;
--ROLLUP(Į��) : GROUP BY������ �Ұ�, �Ѱ踦 ����
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by ROLLUP(a.deptno, a.deptname);
--CUBE(Į��1, Į��2) : group by������ ��� �Ұ�,�Ѱ踦 ��ü������ ����
select a.deptno, a.deptname, SUM(b.salary) from department a, employee b
where a.deptno = b.deptno group by CUBE(a.deptno, a.deptname);

-- '1002'�μ��̸� '�ѹ���'���� ����
UPDATE department SET deptname = '�ѹ���'
WHERE deptno = 1002;
-- ���¾� ����� �޿� 3000000���� ����
UPDATE employee SET salary = 3000000 where empname = '���¾�';

-- SUM(Į����) OVER(ORDER BY Į����) - �����հ�
-- Į���� ���� �ҹ��ڷ� ǥ���Ҷ� �ֵ���ǥ�� �ٲ���
-- ���� RANK() �Լ�
select empno, empname, salary, SUM(salary) OVER(ORDER BY empno) "sal_sum", 
RANK() OVER(ORDER BY salary DESC) �޿�����  from employee;

-- ���� RANK() �Լ�
select empno, empname, salary, RANK() OVER(ORDER BY salary DESC) �޿�����,
DENSE_RANK() OVER(ORDER BY salary DESC) �޿�DENSE_RANK
from employee;

commit;