create table TBL_COURSE_202301 (
c_id varchar2(5) not null primary key,
c_name varchar2(40),
credit number(6),
l_id varchar2(10),
week number(2),
start_hour number(4),
end_hour number(4)
);

create table TBL_LECTURER_202301(
	l_id number(6) not null primary key,
	l_name varchar2(10),
	major varchar2(40)
)

select * from TBL_COURSE_202301;

insert into  TBL_COURSE_202301 VALUES ('10001', '애플리케이션 배포', 2, '1', 1, 0900, 1100);

insert into  TBL_COURSE_202301 VALUES ('10002', '프로그래밍 언어 활용', 2, '2', 2, 0900, 1200);
insert into  TBL_COURSE_202301 VALUES ('10003', '응용SW기초기술 활용', 3, '6', 3, 090 0, 1200);
insert into  TBL_COURSE_202301 VALUES ('10004', '화면구현', 3, '4', 4, 0900, 1200);
insert into  TBL_COURSE_202301 VALUES ('20001', '애플리케이션 테스트 수행', 2, '5', 1, 1300, 1600);
insert into  TBL_COURSE_202301 VALUES ('20002', 'SQL 활용', 3, '5', 2, 1500, 1800);
insert into  TBL_COURSE_202301 VALUES ('20003', 'UI 테스트', 3, '6', 3, 1330, 1630);
insert into  TBL_COURSE_202301 VALUES ('30001', '화면 설계', 2, '3', 4, 1330, 1530);
insert into  TBL_COURSE_202301 VALUES ('30002', '네트워크 프로그래밍 구현', 3, '3', 5, 0900, 1200);
insert into  TBL_COURSE_202301 VALUES ('40001', '스마트문화앱구현', 3, '2', 5, 1300, 1600);

insert into TBL_LECTURER_202301 VALUES (1, '김교수', '소프트웨어공학');
insert into TBL_LECTURER_202301 VALUES (2, '이교수', '프로그래밍');
insert into TBL_LECTURER_202301 VALUES (3, '박교수', '네트워크');
insert into TBL_LECTURER_202301 VALUES (4, '우교수', '운영체제');
insert into TBL_LECTURER_202301 VALUES (5, '최교수', '자료구조');
insert into TBL_LECTURER_202301 VALUES (6, '임교수', '인공지능');

SELECT * FROM TBL_COURSE_202301 cr, TBL_LECTURER_202301 lc WHERE cr.l_id = lc.l_id AND cr.c_id = '10003'
