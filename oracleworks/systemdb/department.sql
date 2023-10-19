-- 부서와 사원 테이블 생성
CREATE TABLE department(
    deptid  NUMBER PRIMARY KEY, -- 기본키
    deptname VARCHAR2(20) NOT NULL, -- NULL 불허
    location VARCHAR2(20) NOT NULL -- NULL 불허
);

INSERT INTO department(deptid, deptname, location) VALUES(10, '전산팀', '서울');
INSERT INTO department(deptid, deptname, location) VALUES(20, '관리팀', '인천');
INSERT INTO department(deptid, deptname, location) VALUES(30, '마게팅팀', '수원');

-- 자료 검색 (특정 칼럼 검색)
SELECT deptid, deptname FROM department;

--모든 칼럼 검색 (+ 지역)
SELECT * FROM department;

-- 특정한 데이터(행 : 로우) 검색 - WHERE 사용
-- 부서이름이 전산팀인 로우 검색
SELECT * FROM department WHERE deptname = '전산팀';

-- 자료 수정(부서이름 변경 관리팀 -> 경영팀)
UPDATE department SET deptname = '경영팀' -- 모든 부서이름이 바뀜
WHERE deptid = 20; --부서번호가 20번인 로우의 부서이름 변경 (관리팀 -> 경영팀)

ROLLBACK; --커밋 전 까지 롤백함 커밋하면 롤백이 안됨.

-- 자료 삭제(부서번호30번인 마케팅팀 삭제)
-- 삭제 이상(자식이 참조하고 있으므로 삭제 안됨) - 10번 삭제하려하면 무결성 제약조건 위배
DELETE FROM department -- 모든 부서 삭제
WHERE deptid = 30; -- 부서번호 30번 삭제

COMMIT;