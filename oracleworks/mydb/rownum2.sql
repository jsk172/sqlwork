select * from drink2;

-- 테이블 복사
CREATE TABLE drink2 AS
SELECT * FROM drink;

-- 재귀복사(INSERT INTO ~ SELECT) : VALUES 사용안함
INSERT INTO drink2
(SELECT * FROM drink2);

-- ROWNUM (SUDO COLUMN - 제공된 관리자 칼럼)
select rownum, drink_code, drink_name
from drink2;
-- where rownum >= 11 AND rownum <= 20; 1이 포함되어야 검색이 됨
select rownum, drink_code, drink_name
from drink2
where rownum >=1 and rownum <= 10;

-- from 절 서브쿼리 사용 - 인라인뷰
select rn, drink_code, drink_name
from (select rownum rn, drink_code, drink_name from drink2)
where rn >=20 and rn <= 40; -- rownum을 사용하면 검색이 안되고 rownum rn으로 별칭을 만들고 별칭을 사용하면 검색이 됨.