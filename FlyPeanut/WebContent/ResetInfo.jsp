<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="work.model.dto.EmployeeDto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("EUC-KR"); %>
<table width="1340" height="650" border="1">
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
   			<div style="text-align:right; width=300px; padding-right=10px"  ><%= session.getAttribute("e_kname") +"님 환영합니다." %>
		<a href="Controller?action=myPage">마이페이지</a>
		<a href="Controller?action=logout">로그아웃</a></div> 
   		<a href="Menu1.jsp">
		<img src="images/logo.jpg" width="200" height="100"></a>
		피넛에어 통합관리자 페이지입니다.
		<hr>
	</td>
   <td rowspan="3" width="10%" ></td>
   </td>
  </tr>
  <tr>
   <td width="20%" height="70%">
   		<table width="250" height="200" border="1" cellpadding="10" align="center" >
   			<tr>
   				<td><h3>내 정보</h3><hr></td>
   			</tr>
   			<tr>
   			<td><a href="#">예매 내역</a></td>
   			</tr>
   			<tr>
   			<td>><a href="ResetInfo.jsp">내정보 수정</a></td>
   			</tr>
   			<tr>
   			<td><a href="CheckPw.jsp">비빌번호 변경</a></td>
   			</tr>
   			<tr>
   			<td><a href="Delete.jsp">탈퇴하기</a></td>
   			</tr>
   		</table>
   </td>
   <td width="60%" height="70%">
   <form action="Controller" method="post">
   		<table border="1" align="center" width="500px" height="400px">
   		<% EmployeeDto dto= (EmployeeDto)request.getAttribute("dto"); %>
	<tr >
		<th>사번</th>
		<td>
			<%= session.getAttribute("e_id") %>
		</td>
	</tr>
	<tr>
		<th rowspan="2">이름</th>
		<td>
			(한글) <%= session.getAttribute("e_kname")%>
		</td>
	</tr>
	<tr>
		<td>
			(영문)<%= request.getParameter("e_ename") %>
		</td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td>
			<%= request.getParameter("e_birth") %>
		</td>
	</tr>
	<tr>
		<th>휴대폰 번호</th>	
		<td>
				<input type="text" id="e_mobile" name="e_mobile" value="<%= request.getParameter("e_mobile") %>">
		</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>
			<input type="text" id="e_email" name="e_email" value="<%= request.getParameter("e_email") %>">
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>
			<input type="text" id="e_address" name="e_address" value="<%=request.getParameter("e_address") %>">
		</td>
	</tr>
	</table>
	<div align="center" >
			<input type="hidden" name="action" value="resetInfo">
			<input type="submit" name="updateInfo" id="updateInfo" value="변경"  >
	</div>
	</form>	
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
</body>
</html>