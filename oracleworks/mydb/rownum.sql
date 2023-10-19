-- ROWNUM(로우번호, 행번호)
-- 행 수를 제한하고 싶을 때 사용, SUDO COLUME이라 함
CREATE TABLE ex_score(
    name VARChAR2(20),
    score NUMBER(3)
);
INSERT INTO ex_score VALUES('김하나', 94);
INSERT INTO ex_score VALUES('이하나', 100);
INSERT INTO ex_score VALUES('박하나', 97);
INSERT INTO ex_score VALUES('정하나', 91);
INSERT INTO ex_score VALUES('최하나', 88);
INSERT INTO ex_score VALUES('윤하나', 88);
INSERT INTO ex_score VALUES('임하나', 65);
INSERT INTO ex_score VALUES('장하나', 44);
INSERT INTO ex_score VALUES('함하나', 92);
INSERT INTO ex_score VALUES('고하나', 71);

select * from ex_score;

select ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 5;

-- 2부터 6행까지 데이터 검색 (ROWNUM은 1부터 시작해야함)
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM between 1 AND 6;
-- 점수를 높은순으로 정렬
select * from ex_score order by score desc;
-- 점수를 높은순으로 정렬(내림차순) 5등까지만 -> 높은순으로 5명이 안나옴
SELECT rownum, name, score FROM ex_score
WHERE ROWNUM <=5 ORDER BY score DESC ;
-- 성적을 내림차순으로 정렬한 후 5개를 검색
SELECT * FROM (select * from ex_score order by score desc)
WHERE rownum <= 5;
-- 성적순위
SELECT name, score, 
rank() OVER(order by score desc) 순위,
dense_rank() OVER(ORDER BY score desc) 순위2
FROM (select * from ex_score order by score desc);

commit;