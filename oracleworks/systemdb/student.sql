-- �л� ���̺� ����
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname VARCHAR2(20) NOT NULL,
    age NUMBER(2) NOT NULL,
    gender VARCHAR2(6) NOT NULL,
    address VARCHAR2(50),
    mname VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname)
);

-- �л� �߰�
INSERT INTO student VALUES(1001, '�̰�', 21, '����', '����� ������', '����Ʈ�����а�');
INSERT INTO student VALUES(1002, '�ڴ��', 22, '����', '��õ�� ����', '�������ڰ��а�');
INSERT INTO student VALUES(1003, '�쿵��', 26, '����', '', '�������ڰ��а�');
INSERT INTO student VALUES(1004, '�쿵��1', 26, '����', ' ', '�������ڰ��а�');
-- �θ�Ű�� ���� �����ʹ� ���� �̻� �߻�
INSERT INTO student VALUES(1003, '���', 24, '����', '����� ���빮��', 'ȸ���а�');

-- ��ü �л� ��ȸ
SELECT * FROM student;

-- �̸��� '�̰�'�� �л��� �̸��� ���� ��ȸ
SELECT sname, age FROM student WHERE sname = '�̰�'; 
-- �̸��� '��'�� ���Ե� �л��� ��� ������ ����ϼ���
SELECT * FROM student WHERE sname LIKE '%��%';
-- ���̰� 20�̻��̰� ������ ������ �л��� ��� ���� ���
SELECT * FROM student WHERE gender = '����' AND age >= 20;
-- �ּҰ� ���� �л��� ������ ���
SELECT * FROM student WHERE address IS NULL;
-- �ּҰ� ���� �л��� ���� ����
DELETE FROM student WHERE address IS NULL;
DELETE FROM student WHERE address = ' ';
-- �ּҰ� NULL�� �����Ϳ� '������ ���뱸'�� �Է�
UPDATE student SET address = '������ ���뱸' WHERE address IS NULL;
-- �л��� ���̰� ���� ������ ����
SELECT * FROM student ORDER BY age;
-- �л��� ���̰� ���� ������ ����
SELECT * FROM student ORDER BY age DESC;
-- �а����� �������ڰ��а� �л��߿��� ���̰� ���� ������ ����
SELECT * FROM student WHERE mname = '�������ڰ��а�' ORDER BY age DESC;

ROLLBACK;
DROP TABLE student;
commit;