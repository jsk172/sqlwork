-- ex4 ���̺� ����
CREATE TABLE ex4(
    id VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(10) NOT NULL
);

INSERT INTO ex4 VALUES ('sky2003', 'u1234');
INSERT INTO ex4 VALUES ('sky2003', 'u54321'); --���Ἥ ���� ���� ����

COMMIT;

SELECT * FROM ex4;