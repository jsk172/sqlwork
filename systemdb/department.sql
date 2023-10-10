-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY, -- �⺻Ű
    deptname VARCHAR2(20) NOT NULL, -- NULL ����
    location VARCHAR2(20) NOT NULL -- NULL ����
);

INSERT INTO department(deptid, deptname, location) VALUES(10, '������', '����');
INSERT INTO department(deptid, deptname, location) VALUES(20, '������', '��õ');
INSERT INTO department(deptid, deptname, location) VALUES(30, '��������', '����');

-- �ڷ� �˻� (Ư�� Į�� �˻�)
SELECT deptid, deptname FROM department;

--��� Į�� �˻� (+ ����)
SELECT * FROM department;

-- Ư���� ������(�� : �ο�) �˻� - WHERE ���
-- �μ��̸��� �������� �ο� �˻�
SELECT * FROM department WHERE deptname = '������';

-- �ڷ� ����(�μ��̸� ���� ������ -> �濵��)
UPDATE department SET deptname = '�濵��' -- ��� �μ��̸��� �ٲ�
WHERE deptid = 20; --�μ���ȣ�� 20���� �ο��� �μ��̸� ���� (������ -> �濵��)

ROLLBACK; --Ŀ�� �� ���� �ѹ��� Ŀ���ϸ� �ѹ��� �ȵ�.

-- �ڷ� ����(�μ���ȣ30���� �������� ����)
-- ���� �̻�(�ڽ��� �����ϰ� �����Ƿ� ���� �ȵ�) - 10�� �����Ϸ��ϸ� ���Ἲ �������� ����
DELETE FROM department -- ��� �μ� ����
WHERE deptid = 30; -- �μ���ȣ 30�� ����

COMMIT;