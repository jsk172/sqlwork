-- �� ���̺� ����
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(20)
);
-- �� ����
INSERT INTO customer VALUES(1, '������', '���� ��ü����', '100-000-0000');
INSERT INTO customer VALUES(2, '�迬��', '���ѹα� ����', '010-1111-2222');
INSERT INTO customer VALUES(3, '�Ȼ�', '���ѹα� ���ֱ�����', '010-1234-5678');
INSERT INTO customer VALUES(4, '������', '�̱� �����', '');
INSERT INTO customer VALUES(5, '�����', '���� ��Ʈ��', '010-6666-7777');

commit;
