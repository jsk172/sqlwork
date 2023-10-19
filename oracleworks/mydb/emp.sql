-- emp ���̺�
CREATE TABLE emp(
    empno NUMBER(3) PRIMARY KEY, -- �����ȣ
    ename VARCHAR2(20) NOT NULL, -- ����̸�
    gender VARCHAR(6) NOT NULL,  -- ����
    salary NUMBER(10),           -- �޿�
    hire_date VARCHAR2(20) NOT NULL -- �Ի���
);

INSERT INTO emp VALUES(100, '�̰�', '����', 3000000, '2019-01-01');
INSERT INTO emp VALUES(101, '���', '����', 2500000, '2020-05-15');
INSERT INTO emp VALUES(102, '�����', '����', 5000000, '2015-02-22');
INSERT INTO emp VALUES(103, '�ڽ���', '����', null, '2023-10-01');

-- �ǽ����� Ǯ��
/*
1. ����� �Ի��� ������ ����(��������)
2. ����� �޿� ������ ����(��������)
3. �޿��� 300���� ������ ����� �޿��� ���������� ����
4. �޿��� ���� ����� �˻�
5. ����� �� �� ���ϱ�
6. ����� �޿� �հ��� ��� ���ϱ�
7. �̸��� ����� ����� ������ ���ڷ� ����
8. �̸��� ������� ����� ����
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
SELECT COUNT(*) ������Ѽ� FROM emp;
--6
SELECT AVG(salary) �޿��հ���� FROM emp;
--7
UPDATE emp SET gender = '����' WHERE ename = '���';
--8
DELETE FROM emp WHERE ename = '�����';

--�ݿø� : ROUND(����, �ڸ���)
SELECT ename ����̸�, salary ����, 
ROUND(salary/30, 0) �ϱ�
FROM emp;

SELECT * FROM emp;

-- �޿��� ���� ���� ����� �˻�
SELECT ename,salary FROM emp 
WHERE SALARY = (SELECT MAX(salary) FROM emp) OR SALARY = (SELECT MIN(salary) from emp);

rollback;
commit;