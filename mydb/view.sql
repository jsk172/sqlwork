-- VIEW 생성
-- 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만드시오

CREATE VIEW vw_customer
AS SELECT * FROM customer
WHERE address LIKE '%대한민국%';

SELECT * FROM vw_customer;
-- 이름이 김연아를 신유빈으로 변경
UPDATE vw_customer SET name = '신유빈' WHERE name = '김연아';
-- 고객 ID가 3인 고객 삭제
DELETE FROM vw_customer WHERE custid = 3; -- 참조하고있는 order 테이블이 있어서 삭제 불가

DROP VIEW vw_customer; -- 뷰 삭제
commit;