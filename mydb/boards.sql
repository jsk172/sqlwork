-- 게시판 테이블 생성
CREATE TABLE boards(
    bno NUMBER PRIMARY KEY,
    btitle VARCHAR2(100) NOT NULL,
    bcontent CLOB NOT NULL, -- CLOB(Charactor Large Of Byte)
    bwriter VARCHAR2(50) NOT NULL,
    bdate DATE DEFAULT SYSDATE,
    bfilename VARCHAR2(50),
    bfiledata BLOB --(Binary Large Of Byte)
);
-- 시퀀스 생성(NOCACHE - 저장하지않음, 초기화되면 1부터 시작됨)
CREATE SEQUENCE seq_bno NOCACHE;

-- 게시글 추가
INSERT INTO boards(bno, btitle, bcontent, bwriter)
VALUES(seq_bno.NEXTVAL, 'smartphone', '삼성 갤럭시 S21입니다.', 'today');

INSERT INTO boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES(seq_bno.NEXTVAL, 'smartphone', '삼성 갤럭시 S21입니다.', 'today', SYSDATE, null, null);

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


