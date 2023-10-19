-- 실습 문제
/*
1. 모든 고객의 이름과 주소를 검색하시오
2. 모든 고객의 이름, 주소, 전화번호를 검색하시오 
3. 주소가 '영국'인 고객을 검색하시오
4. 고객의 이름이 김연아 혹은 안산인 고객을 검색하시오
5. 주소가 대한민국이 아닌  고객을 검색하시오
6. 전화번호가 있는 고객을 검색하시오
7. 고객을 이름순으로 정렬하시오
8. 고객의 총 인원수를 구하시오
*/
SELECT name, address FROM customer; --1
SELECT name, address, phone FROM customer; --2
SELECT * FROM customer WHERE address LIKE '%영국%'; --3
SELECT * FROM customer WHERE name IN('김연아','안산');; --4
SELECT * FROM customer WHERE address NOT LIKE '%대한민국%'; --5
SELECT * FROM customer WHERE phone IS NOT NULL; --6
SELECT * FROM customer ORDER BY name asc; --7
SELECT COUNT(*) as 총고객수 FROM customer; --8