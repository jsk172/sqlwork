-- ��Ű��system
-- ���̺�
CREATE TABLE ex1(
    colum1 CHAR(10), --�������� ����(10Byte)
    colum2 VARCHAR2(10) --�������� ����(10Byte)
);

--������ �߰�
INSERT INTO ex1(colum1, colum2) VALUES ('abc', 'abc');
INSERT INTO ex1 VALUES('���', '���');

--������ ��ȸ
SELECT colum1, LENGTH(colum1), colum2, LENGTH(colum2) FROM ex1;

--Ʈ����� : COMMIT, ROLLBACK
COMMIT;