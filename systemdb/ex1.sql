-- ��Ű��:system
-- ���̺� ����
CREATE TABLE ex1(
    column1 CHAR(10),         -- �������� ���� (10Byte) 
    column2 VARCHAR2(10)      -- �������� ���� (10Byte) 
);


-- ������ �߰�
INSERT INTO ex1(column1, column2) VALUES ('abc', 'abc');   -- "" ���X '' ���O
INSERT INTO ex1 VALUES ('���', '���');            -- Į�� ��ο� ���� ���� ���� ����

-- ������ ��ȸ
SELECT column1, LENGTH(column1), column2, LENGTH(column2) FROM ex1;

-- Ʈ����� : COMMIT, ROLLBACK
COMMIT;