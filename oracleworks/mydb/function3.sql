-- ���ǿ� ���� �Լ�
-- DECODE(Į����, ����, ���ΰ�, �����ΰ�)
-- ������ �����̸� 'M', �����̸� 'F'�� ���

SELECT ename ����̸�, gender ����,
DECODE(gender, '����', 'M', 'F') gender
FROM emp;

-- ���� ����(IF-ElSE����)
/*
    CASE
        WHEN ����1   THEN ���1
        WHEN ����2   THEN ���2
        ELSE ���3
    END Į����
*/
SELECT ename ����̸�, gender ����,
CASE
    WHEN gender='����' THEN 'M'
    ELSE 'F'
END gender
FROM emp;

SELECT * FROM emp;

-- �޿��� ���� ���� ǥ��
-- �޿��� 350���� �̻��̸� ���� = '����'
-- �޿��� 250���� �̻��̸� ���� = '�븮'
-- ������ = '���'
SELECT ename ����̸�, salary ����,
CASE
    WHEN salary >= 3500000 THEN '����'
    WHEN salary >= 2500000 THEN '�븮'
    ELSE '���'
END ����
FROM emp;

SELECT COUNT(salary) FROM emp; -- salary ����
-- null���� 0�� ǥ��(NVL - NULL VALUE)
-- NVL(�μ�1, �μ�2) : �μ�1�� NULL�� �ƴϸ� �μ�1 ��� �μ�1�� NULL�̸� �μ�2�� ���
SELECT ename,
NVL(salary, 0)
from emp;

-- �ǽ� ���̺� ����
CREATE TABLE k1(
 ID VARCHAR2(3),
 CNT NUMBER(2)
);
INSERT INTO k1 VALUES('��', 5);
INSERT INTO k1 VALUES('��', NULL);
INSERT INTO k1 VALUES('��', 5);
INSERT INTO k1 VALUES('��', null);
INSERT INTO k1 VALUES('��', 10);
SELECT * FROM K1;

SELECT NVL(cnt, 0) FROM k1;
SELECT COUNT(cnt) FROM k1;
SELECT COUNT(NVL(cnt,0)) FROM k1;

SELECT SUM(cnt)/COUNT(cnt) FROM k1;
SELECT SUM(cnt)/ COUNT(NVL(cnt,0)) FROM k1;
SELECT AVG(cnt)/COUNT(NVL(cnt,0)) FROM k1;

SELECT MIN(NVL(CNT, 5)) FROM k1;

commit;