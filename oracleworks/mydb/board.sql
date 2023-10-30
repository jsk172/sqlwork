-- �ڹ� �Խ��� ������ board ���̺� ����
CREATE TABLE board(
    bno NUMBER PRIMARY KEY,
    btitle VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL, -- CLOB(Charactor Large Of Byte)
    bwriter VARCHAR2(50) NOT NULL,
    bdate DATE DEFAULT SYSDATE
);
CREATE SEQUENCE seq NOCACHE;

INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES(seq.NEXTVAL, '���� �λ�', '�ȳ��ϼ���~ ������ �ݰ����ϴ�.', 'today10');
INSERT INTO board(bno, btitle, bcontent, bwriter) 
VALUES(seq.NEXTVAL, '��������', 'õ�� ������ û���մϴ�.', 'admin0000');

-- ��� ����
INSERT INTO board(bno, btitle, bcontent, bwriter)
(SELECT seq.NEXTVAL, btitle, bcontent, bwriter FROM board);

select * from board ORDER BY bno DESC;

--rownum�� �̿��� ������ ó��
SELECT ROWNUM, bno, btitle, bcontent, bwriter, bdate
FROM board
WHERE ROWNUM >= 1 AND ROWNUM <= 10;

-- rownum 1�� �����ؾ��ϹǷ� rn�� ����Ͽ� ������ ó����
SELECT *
FROM(SELECT ROWNUM rn, bno, btitle, bcontent, bwriter, bdate
FROM board)
WHERE rn >= 1 AND rn <= 10;

-- ROWID = �����͸� ������ �� ���� ������ ��, ������ ������ ���� ����� Ȯ�� �� �� ����
-- ROWID ������ �˻��� �� �� ����
SELECT ROWID, bno, btitle FROM board
where ROWID = 'AAATaDAAHAAAAR3AAB';

DROP SEQUENCE seq;
TRUNCATE TABLE board;
commit;