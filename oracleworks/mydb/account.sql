-- 은행계좌 테이블 생성
CREATE TABLE account(
    ano         VARCHAR2(20) PRIMARY KEY,
    owner      VARCHAR2(20) NOT NULL,
    balance    NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '김지성', 10000);
-- 자료 변경(입, 출금)
UPDATE account SET balance = 50000, owner = '김지성C' WHERE ano = '11-22-333';
DELETE FROM account WHERE ano = '11-22-333';
SELECT * FROM account where ano = '11-11-111';

rollback;
COMMIT;

SELECT * FROM account;