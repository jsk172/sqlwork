-- �Խ��� ���̺� ����
CREATE TABLE boards(
    bno NUMBER PRIMARY KEY,
    btitle VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL, -- CLOB(Charactor Large Of Byte)
    bwriter VARCHAR2(50) NOT NULL,
    bdate DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),
    bfiledata BLOB --(Binary Large Of Byte)
);
-- ������ ����(NOCACHE - ������������, �ʱ�ȭ�Ǹ� 1���� ���۵�)
CREATE SEQUENCE seq_bno NOCACHE;

-- �Խñ� �߰�
INSERT INTO boards(bno, btitle, bcontent, bwriter)
VALUES(seq_bno.NEXTVAL, 'smartphone', '�Ｚ ������ S21�Դϴ�.', 'today');

INSERT INTO boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES(seq_bno.NEXTVAL, 'smartphone', '�Ｚ ������ S21�Դϴ�.', 'today', SYSDATE, null, null);

SELECT * FROM boards;

SELECT * FROM boards 
WHERE bwriter = 'sky123'
ORDER BY bno DESC;

SELECT * FROM boards
ORDER BY bno DESC;

--smartphone -> iphone
UPDATE boards SET btitle = 'Iphone' WHERE bno =6;
DELETE FROM boards WHERE btitle = 'notebook3';
rollback;

commit;


