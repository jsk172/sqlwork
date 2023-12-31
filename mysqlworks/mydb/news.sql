use mydb;
-- news 테이블 생성
create table news(
	aid INT PRIMARY KEY auto_increment, -- 기사 글 번호(article id)
    title varchar(100) NOT NULL, -- 제목
    content TEXT NOT NULL, -- 내용
    create_date TIMESTAMP DEFAULT now(), -- 등록일
    img VARCHAR(40) -- 이미지파일
);
insert into news(title, content, img) values('경제 뉴스', '휘발유값이 너무 올랐습니다.', 'car.jpg');
insert into news(title, content, img) values('정치 뉴스', '이스라엘과 팔레스타인 전쟁', 'war.jpg');
insert into news(title, content, img) values('스포츠 뉴스', '한국과 베트남 축구 성적 6:0', 'soccer.jpg');
insert into news(title, content, img) values('과학 뉴스', '협동로봇, 청소 서비스로봇', 'robot.jpg');

-- 등록 시간 순으로 정렬(최근 등록일이 위로 올라감)
select * from news order by create_date desc;
-- 뉴스 내용 중에 '이스라엘'이 포함된 뉴스 검색
select * from news where content Like '%이스라엘%';
-- 뉴스 기사의 총 개수
select count(*) "총 개수" from news;

select * from news;
