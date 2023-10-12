SELECT * FROM orders;
SELECT * FROM book;
-- orders 테이블의 칼럼, 자료형 구조
DESC orders;

-- 통계 함수 - 개수(count), 합계(sum), 평균(avg), 최대값(max), 최소값(min)
-- COUNT(*) : '*' - 칼럼명
-- COUNT(칼럼명) : 
SELECT COUNT(*) AS 총판매건수 FROM orders;
SELECT COUNT(*) AS 총고객수, COUNT(phone) AS 전화번호수 FROM customer;
-- 고객이 주문한 도서의 총판매액 계산
SELECT SUM(saleprice) 총판매액 FROM orders;
-- 고객별로 주문한 도서의 총판액과 도서수량 계산(도서수량이 3권이상인 자료 검색), 
-- 그룹으로 묶을때 사용 : (GROUP BY 칼럼명)
SELECT custid, SUM(saleprice) 총판매액, COUNT(*) 도서수량 
FROM orders GROUP BY custid HAVING COUNT(*) >= 3; --AND SUM(saleprice)>35000;


-- 도서중에서 최대가격, 최저가격 찾기
SELECT MAX(price) 최고가격, MIN(price) 최저가격 FROM book;
-- 3번 고객(안산)이 주문한 도서의 총 판매액 구하기
SELECT SUM(saleprice) 총판매액 from orders WHERE custid = 3;
-- 3번고객의 id와 주문가격 검색
SELECT custid, saleprice FROM orders WHERE custid = 3;

-- 조인
-- 동등조인(EQUI JOIN) : equal(=)을 사용하는 조인
-- 테이블 A.칼럼명 = 테이블B.칼럼명 (칼럼 - 외래키)


-- 고객의 이름과 고객이 주문한 도서의 판매가격을 검색(customer, orders 조인)
select customer.name, orders.saleprice
from customer, orders where customer.custid = orders.custid;

-- 3번고객의 id와 주문가격, 도서이름 검색
select custid, bookname, saleprice
from orders, book
where orders.bookid = book.bookid and orders.custid = 3;


-- 별칭 사용 조인(고객 이름별 정렬, 오름차순)
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice DESC;
