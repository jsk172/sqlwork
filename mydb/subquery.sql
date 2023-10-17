-- 서브 쿼리(Sub Query) : 부속질의(중첩 쿼리)
-- SELECT문 내부에 SELECT문이 존재함.

-- 도서중 가격이 가장 높은 도서를 검색
SELECT MAX(price) FROM book;

-- 도서중 가격이 가장 높은 도서의 이름 검색
SELECT bookname FROM book WHERE price = (SELECT MAX(price) FROM book);

-- 도서를 구매한 적이 있는 고객의 이름을 검색
SELECT custid FROM orders;
/*
SELECT name FROM customer
WHERE custid IN(1,2,3,4);
*/
-- 다중행 서브쿼리
SELECT name FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- FROM절에 있는 서브쿼리 - 인라인뷰라고도 함
-- 고객의 이름과 고객의 판매액 검색 (그룹별 : GROUP BY)
-- 단, 고객의 번호가 2 이하임
SELECT cs.name, SUM(od.saleprice) 
FROM (SELECT * FROM customer WHERE customer.custid <= 2) cs, 
     orders od
WHERE cs.custid = od.custid
GROUP BY cs.name
HAVING SUM(od.saleprice) >= 30000;

-- 도서를 구매한 적이 있는 고객의 이름을 검색 (조인방식 : customer, orders)
SELECT DISTINCT cus.name 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

select * FROM product;
select * from product_review;
-- 상품 리뷰 테이블에 있는 상품 이름 검색
-- 스칼라 서브쿼리 : select절에있는 select문을 말함
SELECT a.product_code, a.memberid, a.content, 
(select b.product_name from product b WHERE a.product_code = b.product_code) product_name
FROM product_review a;
