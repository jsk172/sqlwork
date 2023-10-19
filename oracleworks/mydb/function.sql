-- 숫자 타입 내장 함수
-- 절대값 구하기 : ABS()
-- 제공 테이블 : dual
SELECT abs(-10) FROM dual;

-- 반올림 : ROUND()
SELECT ROUND(127.69, 1) FROM dual; -- 소수점 둘째자리에서 반올림.
SELECT ROUND(127.67, 0) FROM dual; -- 소수점 첫째자리에서 반올림
SELECT ROUND(127.67, -1) FROM dual; -- 1의자리에서 반올림
SELECT ROUND(127.67, -2) FROM dual; -- 10의자리에서 반올림

-- 버림(내림) : TRUNC()
SELECT TRUNC(127.67, 1) FROM dual; --소수점 둘째자리이하 버림.
SELECT TRUNC(127.67, 0) FROM dual; --소수점 첫째자리이하 버림.
SELECT TRUNC(127.67, -1) FROM dual; --1의자리 이하 버림.
SELECT TRUNC(127.67, -2) FROM dual; --10의자리 이하 버림.

SELECT FLOOR(127.67) FROM dual; -- 소수점 이하 버림

SELECT POWER(2, 3) FROM dual; -- 2의 3승

-- 문자 타입
-- 소문자로 변경하기 : LOWER('ABCD')
-- 대문자로 변경하기 : UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;
-- 문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
SELECT SUBSTR('abcd', 2, 2) FROM dual;
-- 문자열을 찾아 바꾸기 : REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;
-- 문자열의 길이 : LENGTH(문자열)
SELECT LENGTH('abcde') FROM dual;
-- 마스킹 : 
--LPAD(문자열, 길이, 특정문자) : 부족한 길이만큼 왼쪽부터 특정문자로 채워줌
--RPAD(문자열, 길이, 특정문자) : 부족한 길이만큼 오른쪽부터 특정문자로 채워줌
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;



-- 주문테이블
-- 고객별 평균 주문 금액을 반올림
SELECT custid,
SUM(saleprice) AS 합계금액,
COUNT(saleprice) AS 주문건수,
ROUND(AVG(saleprice), -2) AS 평균주문금액 --10의자리에서 반올림
FROM orders
GROUP BY custid;

-- 도서테이블
-- 책 제목의 글자수
SELECT bookname,
LENGTH(bookname) as 글자수,
LENGTHB(bookname) as 바이트수 -- 한글 - 3byte, (영어, 특수문자) - 1byte
FROM book;

-- '축구'를 '농구'로 변경하여 검색
SELECT bookname,
REPLACE(bookname,'축구','농구') as bookname
FROM book;

-- 고객 테이블
-- 고객 이름별 같으 성을 가진 고객의 인원수를 구하시오
SELECT SUBSTR(name, 1, 1) 성, --성만 출력
COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);