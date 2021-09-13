<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="aside">
	
		<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
	
		<div id="aside_cate">
		
			<ul>
			    <li><a href="${pageContext.request.contextPath}/rankUser">유저 랭킹</a></li>
			    <li><a href="${pageContext.request.contextPath}/rankTheme">테마 랭킹</a></li>
			</ul>
		
		</div>
		
	</div>
	
</body>
</html>