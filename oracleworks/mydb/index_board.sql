-- 실행 계획 : 옵티마이저
SELECT * FROM board;

-- 작성자가 admin0000인 게시글 검색
SELECT * FROM board where bwriter = 'admin0000';

-- 오라클 힌트 적용(/*+ INDEX(테이블명 인덱스명) */
-- 작성자가 admin0000인 게시글 검색
SELECT /*+INDEX(board idx_bl) */* FROM board where bwriter = 'admin0000';

--인덱스 생성(CREATE INDEX 인덱스이름 ON 테이블명(칼럼명))
CREATE INDEX idx_bl ON board(bwriter);

    
DROP INDEX idx_bl;