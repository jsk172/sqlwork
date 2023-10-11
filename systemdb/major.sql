-- �б� �����ͺ��̽� ����
-- �а� ���̺� ����
CREATE TABLE major(
    mname   VARCHAR2(10) PRIMARY KEY,
    mphone  VARCHAR2(20) NOT NULL, -- �ʼ� �Է�
    location VARCHAR2(30) NOT NULL
);

-- �а� �߰�
INSERT INTO major(mname, mphone, location) VALUES('����Ʈ�����а�', '02-1234-5678', 'B�� 3��');
INSERT INTO major(mname, mphone, location) VALUES('ȭ�а��а�', '02-1111-2222', 'B�� 4��');
INSERT INTO major(mname, mphone, location) VALUES('�������ڰ��а�', '02-3333-5555', 'B�� 5��');

-- �а��� �ڷ��� ũ�� ����
ALTER TABLE major MODIFY mname VARCHAR2(30);

-- ��ü ������ ��ȸ
SELECT * FROM major;

-- �а���� ��ȭ��ȣ ��ȸ(��Ī�� ����ϴ¹� AS���)
SELECT mname AS �а���, mphone AS ��ȭ��ȣ FROM major;

commit;