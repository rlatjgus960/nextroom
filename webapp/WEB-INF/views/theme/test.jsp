<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="search_area">
		<form action="/webservlet 주소" method="get" id="searchForm">
			<div class="search_ctn">
				<div class="search_div1">
					<ul>
						<li class="search_li">주제 :</li>
						<li class="check_li"><input type="checkbox" id="s1" name=attract value="1001" /><label
							for="s1">맛집</label></li>
						<li class="check_li"><input type="checkbox" id="s3" name="attract" value="1002" /><label
							for="s3">명소</label></li>
						<li class="check_li"><input type="checkbox" id="s2" name="attract" value="1003" /><label
							for="s2">숙소</label></li>
					</ul>
				</div>

				<div class="search_div2">
					<ul>
						<li class="search_li">지역 :</li>
					</ul>
					<ul>
						<li><input type="checkbox" id="r1" name="area" value="2001" /> <label for="r1">서울</label></li>
						<li><input type="checkbox" id="r2" name="area" value="2005" /> <label for="r2">인천</label></li>
						<li><input type="checkbox" id="r3" name="area" value="2009" /> <label for="r3">대전</label></li>
					</ul>
					<ul>
						<li><input type="checkbox" id="r4" name="area" value="2002" /> <label for="r4">광주</label></li>
						<li><input type="checkbox" id="r5" name="area" value="2006" /> <label for="r5">부산</label></li>
						<li><input type="checkbox" id="r6" name="area" value="2010" /> <label for="r6">대구</label></li>
					</ul>
					<ul>
						<li><input type="checkbox" id="r7" name="area" value="2003" /> <label for="r7">경기</label></li>
						<li><input type="checkbox" id="r8" name="area" value="2007" /> <label for="r8">강원</label></li>
						<li><input type="checkbox" id="r9" name="area" value="2011" /> <label for="r9">충청</label></li>
					</ul>
					<ul>
						<li><input type="checkbox" id="r10" name="area" value="2004" /> <label for="r10">호남</label></li>
						<li><input type="checkbox" id="r11" name="area" value="2008" /> <label for="r11">영남</label></li>
						<li><input type="checkbox" id="r12" name="area" value="2012" /> <label for="r12">제주</label></li>
					</ul>
				</div>
			</div>
			<!-- search_ctn END -->
			<div class="search_box">
				<select name="searchType">
					<option>선택</option>
					<option value="id">ID</option>
					<option value="title">제목</option>
				</select> <input type="text" class="searchbox" name="searchWord" />

				<button class="btn" type="submit">
					<i class="fas fa-search-plus" style="color: skyblue"></i>
				</button>
			</div>
			<!-- search_box END-->
		</form>
	</div>

</body>
</html>