--직원테이블 등록
CREATE TABLE EMPLOYEE 
(
  E_ID VARCHAR2(20)  
, E_PW VARCHAR2(20) 
, E_KNAME VARCHAR2(20) 
, E_EFNAME VARCHAR2(20) 
, E_ELNAME VARCHAR2(20) 
, E_SEX VARCHAR2(4) 
, E_BIRTH DATE 
, E_MOBILE VARCHAR2(15) 
, E_EMAIL VARCHAR2(30)
, E_ADDRESS VARCHAR2(80)
, E_STATUS VARCHAR2(2)
)
--샘플
insert into EMPLOYEE values
('123456','password','이민정','lee','minjeong',
'여성',to_date('1994-02-04','yyyy-mm-dd'),'010-7421-8900','123456@naver.com','경기도 화성시','e');

insert into EMPLOYEE values
('12345','password','김소망','kim','somang',
'여성',to_date('1996-04-23','yyyy-mm-dd'),'010-1234-1234','12345@nate.com','서울시 강남구','e');