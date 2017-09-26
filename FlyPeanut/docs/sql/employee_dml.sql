-- 직원 로그인 조회
select e_kname from employee where e_id=123456 and e_pw='password';
-- select e_kname from employee where e_id=? and e_pw=?

-- 암호찾기(임시발급암호변경 반환)
update members set e_pw=?  where e_id=? and e_kname=? and e_birth=? and e_email=?

--내정보보기
select * from employee where e_id='123456';
--select * from employee where e_id=?

--내정보 수정
update employee set e_mobile='010-1111-2222', e_email='asdf@gamail.com', e_address='부산시 남포동'  
where e_id='12345';