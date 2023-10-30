-- 등급매기기, ntile()
CREATE TABLE exam_score(
    이름 VARCHAR2(20),
    국어 NUMBER,
    영어 NUMBER,
    수학 NUMBER
);
INSERT INTO exam_score VALUES('가하나', 100 , 100, 100);
INSERT INTO exam_score VALUES('나하나', 97 , 100, 97);
INSERT INTO exam_score VALUES('다하나', 100 , 88, 92);
INSERT INTO exam_score VALUES('라하나', 76 , 82, 88);
INSERT INTO exam_score VALUES('마하나', 92 , 92, 100);
INSERT INTO exam_score VALUES('바하나', 44 , 32, 56);
INSERT INTO exam_score VALUES('사하나', 97 , 54, 100);
INSERT INTO exam_score VALUES('아하나', 73 , 56, 88);
INSERT INTO exam_score VALUES('자하나', 44 , 100, 68);
INSERT INTO exam_score VALUES('차하나', 60 , 66, 82);

select * from exam_score;
-- 국어과목 등급 검색
select 이름, 국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급 from exam_score;
-- 아하나를 제외한 국어 과목 등급 검색
select 이름, 국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급 from exam_score
WHERE 이름 <> '아하나'; -- <> 는 = 의 반대
-- 전체과목
select 이름,
국어, NTILE(8) OVER(ORDER BY 국어 DESC) 국어등급,
영어, NTILE(8) OVER(ORDER BY 영어 DESC) 영어등급,
수학, NTILE(8) OVER(ORDER BY 수학 DESC) 수학등급
from exam_score;
commit;