-- ex4 ���̺� ����
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003', 'u1234');
INSERT INTO ex4 VALUES ('sky2003', 'u54321'); --���Ἥ ���� ���� ����
INSERT INTO ex4 VALUES ('today123', 'U2345', 25);
INSERT INTO ex4(id, pwd, age) VALUES ('today321', 'u3456', 20);
--pwd�� ���� ���� �ʹ� ŭ �ִ� 10�� MODIFY�� ũ�� ���� ���ְ� �����ϸ� ��.
INSERT INTO ex4(id, pwd, age) VALUES ('today0123', 'u1234567890', 23);

COMMIT;

-- ����(age) Į�� �߰�
ALTER TABLE ex4 ADD age NUMBER(3);

-- �ڷ����� ũ�� ����(VARCHAR2�� ũ�⸦ 10 -> 12)
ALTER TABLE ex4 MODIFY pwd VARCHAR2(12);

SELECT * FROM ex4;