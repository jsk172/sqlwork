-- user ���� : test, ��� : pwtest
CREATE USER c##sample IDENTIFIED BY pw1234;
--SESSION ����(�α���-����) �ο�
GRANT CREATE SESSION TO c##sample;
-- DB�� ���̺� ���� ���� �ο�
GRANT CREATE TABLE, RESOURCE TO c##sample; --���̺���� ����
-- ������ ������ ��� ���� �ο� : DML(����, ��ȸ, ����, ����)
GRANT CONNECT, DBA TO c##sample; -- �μ�Ʈ ����