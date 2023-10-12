-- 고객 테이블 생성
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(20)
);
-- 고객 생성
INSERT INTO customer VALUES(1, '박지성', '영국 맨체스터', '100-000-0000');
INSERT INTO customer VALUES(2, '김연아', '대한민국 서울', '010-1111-2222');
INSERT INTO customer VALUES(3, '안산', '대한민국 광주광역시', '010-1234-5678');
INSERT INTO customer VALUES(4, '류현진', '미국 토론토', '');
INSERT INTO customer VALUES(5, '손흥민', '영국 토트넘', '010-6666-7777');

commit;
