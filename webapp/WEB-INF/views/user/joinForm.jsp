<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">


<title>회원가입</title>
</head>
<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->
	
	<div id="wrap">




		<!-- content -->
		<div id="content">


			<div>	
				
				<form id="joinForm" method="post" action="${pageContext.request.contextPath}/user/join" enctype="multipart/form-data">
					<table>
				      	<colgroup>
							<col style="width: 100px;">
							<col style="width: 180px;">
							<col style="">
						</colgroup>
			      		<tr>
			      			<td><label for="txtId">아이디</label></td>
			      			<td><input id="txtId" type="text" name="id"></td>
			      			<td></td>
			      		</tr>
			      		<tr>
			      			<td><label for="txtPassword">패스워드</label> </td>
			      			<td><input id="txtPassword" type="password" name="password"  value=""></td>   
			      			<td></td>  			
			      		</tr> 
			      		<tr>
			      			<td><label for="txtUserName">이름</label> </td>
			      			<td><input id="txtUserName" type="text" name="userName"  value=""></td>   
			      			<td></td>  			
			      		</tr>  
			      		<tr>
			      			<td><label for="txtPhoneNumber">휴대전화</label> </td>
			      			<td>
				      			<input class="txtPhoneNumber" type="text" name="userHp"  value="">
			      			</td>   
			      			<td></td>  			
			      		</tr>    
			      		<tr>
			      			<td><label for="txtEmail">이메일</label> </td>
			      			<td>
				      			<input class="txtEmail" type="text" name="email"  value="">&nbsp;@
				      			<select class="joinSelect" name="emailDetail">
				      				<option value="naver.com">naver.com&nbsp;</option>
				      				<option value="gmail.com">gmail.com&nbsp;</option>
				      				<option value="daum.net">daum.net&nbsp;</option>
				      			</select>
			      			</td>   
			      			<td></td>  			
			      		</tr> 
			      		<tr>
			      			<td><label for="txtNickName">닉네임</label></td>
			      			<td><input class="txtNickName" type="text" name="nickname"  value=""></td>   
			      			<td></td>  			
			      		</tr> 		
			      		<tr>
			      			<td><label for="textLogo">프로필사진</label></td>
			      			<td><img src="${pageContext.request.contextPath }/assets/image/cafe/nextedition1.png" alt="" width="200px" height="140px"></td>
			      			<td></td>
			      		</tr>
			      		<tr>
			      			<td></td>
			      			<td><input id="textLogo" type="file" name="profileImg"></td>
			      			<td></td>
			      		</tr>
			      		
			      	</table>
		      		<div id="btnArea">
						<button id="btnJoin" class="mbutton" type="submit" >가입하기</button>
					</div>
		      		
				</form>
			
			</div>


		</div>

		<!-- //content -->

		<!-- footer -->

		<div id="footer">
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 :
			moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동 서초대로77길 13<br> Copyright
			© NEXTROOM All rights reserved.
		</div>

		<!-- //footer -->
	</div>
</body>

</html>