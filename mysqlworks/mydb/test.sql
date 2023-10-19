-- mydb 생성
create database mydb;
use mydb; -- 작업전에 사용db를 실행시켜야 함.

create table test(
	no int,
    msg varchar(100)
);
insert into test values(1, '좋은 하루 되세요~');
insert into test values(2, 'Good Luck!!');
select * from test;
