<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
		
	/* 페이지 초기화 함수*/
	function init() {
		document.joinform.e_id.focus();
	}
	function checkuserpw() {
		var e_pwElement = document.getElementById("e_pw");
		var e_pw2Element = document.getElementById("e_pw2");
		
		if (e_pwElement.value != e_pw2Element.value) {
			alert("비밀번호가 동일하지 않습니다. 다시 확인해주세요");
			e_pwElement.focus();
		}
	}
	
	function selectEmail(email) {
		if (joinform.e_email1.value.trim().length == 0) {
			alert("이메일을 입력해주세요");
			document.joinform.e_email1.focus();
			console.log(email);
			console.log(email.options[0].values);
			joinform.e_email3.value = email.options[0].value;

		} else {
			if (email.value == "직접입력") {
				joinform.e_email2.value = "";
				document.joinform.e_email2.readOnly = false;
				joinform.e_email2.style.background = "#ffffff";
			} else {
				joinform.e_email2.value = email.value;
				document.joinform.e_email2.readOnly = true;
			}
		}
	}

	/*아이디중복확인 함수
	클릭하면 페이지 열기 :isId.html
	부모창에서 입력한 아이디정보를 자식창의 아이디정보로 초기화 설정
	 */
	function openisid() {
		var url = 'CheckId.jsp';
		var winName = 'idCheck';
		var winConfig = 'top=100,left=100,height=160,width=520,resizable=no,scrollbar=no';
		var childWin = window.open(url, winName, winConfig);

		//부모창에 입력한 아이디 가지고 오기
		var userid = document.getElementById("userid").value.trim();

		//자식창의 아이디로 초기값 설정
		//childWin.document.isId.checkuserid=userid.value;

	}
	
	window.onload = function() {
		init();
	}
	//함수호출
	//printInfo();
</script>
<noscript>자바스크립트가 정상 구동되지 않습니다</noscript>
</head>
<body>
<table width="1340" height="650" border="1">
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
   		
   		<a href="Menu1.jsp">
		<img src="images/logo.jpg" width="200" height="100"></a>
		피넛에어 통합관리자 페이지입니다.
		<hr>
	</td>
   <td rowspan="3" width="10%" ></td>
   </td>
  </tr>
  <tr>
   <td width="80%" height="70%">
   		   <h3>회원가입</h3>
	<hr>
	>모든 항목은
	<u><b>필수 입력</b></u>입니다. 정확히 입력하시면 더욱 편리하게 이용하실 수 있습니다.
	<br>
	<br>
   	<form name="joinform" action="Controller" method="post">
	<table border="1"  align="center" >
	<tr>
			<th >사번</th>
			<td><input type="text" name="e_id" id="e_id" size="20" maxlength="20" onblur="checkuserid(this,this.value)">
				<input type="button" name="checkId" id="checkId" value="확인" onclick="openisid()">
			</td>
		</tr>
		<tr>
			<th rowspan="2">이름</th>
			<td>(한글) <input type="text" name="e_kname" id="e_kname"
				size="20" maxlength="20"></td>
		</tr>
		<tr>
			
			<td>(영문) 성(family name)<input type="text" name="e_efname" id="e_efname"
				size="15" maxlength="20">이름(family name)<input type="text" name="e_elname" id="e_elname"
				size="15" maxlength="20">
			</td>
		</tr>
		<tr>
		<th >비밀번호</th>
		<td><input type="password" name="e_pw" id="e_pw" size=20 maxlength="20">
			<span class="checkpw">*6~20자리 입력해 주세요</<span>
		</td>
		</tr>
		<tr>
		<th >비밀번호 확인</th>
		<td><input type="password" name="e_pw2" id="e_pw2" size=20 maxlength="20" onblur="checkuserpw()" >
			<span class="checkpw">*위의 비밀번호를 한번 더 입력해 주세요</<span>
		</td>
		</tr>
		<tr>
			<th >생년월일</th>
			<td><input  type ="text" name="e_birthyear" id="e_birthyear" size="10" maxlength="4">
			년 <select name="e_birthmonth" id="e_birthmonth"><option value="선택">선택</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
			</select>월 <select name="e_birthdate" id="e_birthdate"><option value="선택">선택</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
			</select>일  
		</td>
	</tr>
	<tr>
			<th >성별</th>
			<td><input type="radio" name="e_sex" id="남성">남
				<input type="radio" name="e_sex" id="여성">여
			</td>
		</tr>
	<tr>
		<th >이메일</th>
		<td><input type="text" name="e_email1" id="e_email1" size=10 maxlength="20">@
			<input type="text" name="e_email2" id="e_email2" size=10 maxlength="20">
			<select name="e_email3" id="e_email3" onchange="selectEmail(this)" >
					<option value="직접입력">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="nate.com">nate.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="daum.com">daum.com</option>
					<option value="gamil.com">gamil.com</option>
			</select></td>
		</tr>
		<tr>
			<th class="thcolor">연락처</th>
			<td><input type="text" name="e_mobile1" id="e_mobile1" size="10" maxlength="3" value="010">- <input type="text" name="e_mobile2" id="e_mobile2" size="10" maxlength="4">- 
				<input type="text" name="e_mobile3" id="e_mobile2" size="10" maxlength="4">
			</td>
		</tr>
	</table>
	<div align="center" margin="10px">
			<input type="hidden" name="action" value="join">
			<input type="button" name="cancel" id="cancel" value="취소" onclick="location='Index.jsp'">
			<input type="reset" name="reset" id="reset" value="초기화">
			<input type="submit" name="submit" id="submit" value="확인">
	</div>
	</form>
   </td>
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
</body>
</html>