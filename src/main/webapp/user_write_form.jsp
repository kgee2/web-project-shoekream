<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.shop.user.UserService"%>
<%@page import="com.itwill.shop.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserService userService = new UserService();
	List<String> userIdList = userService.findUserIdList();
	String msg=(String)request.getAttribute("msg");
	if(msg==null)msg="";
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>S.KREAM | 회원가입</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
<link rel=stylesheet href="css/shop.css" type="text/css">
 
<style type="text/css" media="screen">
</style>
<script src="js/user.js"></script>
<script type="text/javascript">

//아이디 유효성 체크 및 중복체크
function idCheck() {
	const idCheck = /^[a-zA-Z][a-zA-Z0-9]{4,10}$/g;
	let userIdList = new Array();
	<%for(String userId : userIdList) {%>
		userIdList.push("<%=userId%>");
	<%}%>
	if (!idCheck.test(f.user_id.value)) {
		document.getElementById('id_span').innerText = "사용할 수 없는 아이디입니다."
		document.getElementById('id_span').style.color = "red";
		return false;
	} else if(userIdList.indexOf(f.user_id.value)!==-1){
		document.getElementById('id_span').innerText = "중복된 아이디입니다.";
		document.getElementById('id_span').style.color = "red";
		document.f.user_id.focus();
		return false;
	} else {
		document.getElementById('id_span').innerText = "사용가능한 아이디입니다."
		document.getElementById('id_span').style.color = "blue";
		return true;
	}
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp"/>
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="join_content">
				<table width=0 border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<!--contents--> <br />
							<table style="padding-left: 10px" border=0 cellpadding=0
								cellspacing=0>
								<tr>
									<td height="50">
									<font style="font-family: S-CoreDream-5Medium;" size=5>회원가입</font></td>
								</tr>
							</table> <!-- write Form  -->
							<form name="f" method="post">
								<table border="0" cellpadding="0" cellspacing="1" width="300" bgcolor="BBBBBB">
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">아이디</td>
										<td width=500 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input onkeyup="idCheck();" type="text" style="width: 260px; font-size: 11pt" name="user_id"
											value="" placeholder="5글자이상 12글자이하의 영문,숫자 혼합">
											&nbsp;&nbsp;<font color="red"></font>
											<span id="id_span" name= "id_span"></span>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">비밀번호</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input type="password" style="width: 260px; font-size: 12pt" name="user_password"
											value="" >
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">비밀번호 확인</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input onblur="pwCheck();" type="password" style="width: 260px; font-size: 12pt" name="password2"
											value="">
											<span id="pw_span" name="pw_span"></span>
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">이름</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input type="text" style="width: 260px; font-size: 12pt" name="user_name"
											value="">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">전화번호</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input type="text" style="width: 260px; font-size: 12pt" name="user_phone"
											value="">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">이메일</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input type="text" style="width: 260px; font-size: 12pt" name="user_email"
											value="">
										</td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="f4f4f4" height="30">주소</td>
										<td width=300 bgcolor="ffffff" style="padding-left: 10px" align="left">
											<input type="text" style="width: 260px; font-size: 12pt;" name="user_address"
											value="">
										</td>
									</tr>
								</table>
							</form> <br />

							<table border=0 cellpadding=0 cellspacing=1>
								<tr>
									<td align=center>
									<button class="add_button" type="button" value="회원가입" onclick="userCreate();">
											<font style="font-family: S-CoreDream-3Light;" size=2>회원가입</font></button>&nbsp;&nbsp;	
									<button class="add_button" type="button" value="메인으로" onclick="main();">
											<font style="font-family: S-CoreDream-3Light;" size=2>메인으로</font></button><br><br>
									</td>
									
									
								</tr>
							</table>

						</td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp"/>
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>
