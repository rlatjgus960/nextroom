<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/rankTheme.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"
></script>


<title>Insert title here</title>
</head>
<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->


	<div id="wrap">
		<!-- content -->
		<div id="content">
	
	
			<div id="subheader" class="clearfix">
			<div id="subheader-title">
			 <h2><a href="${pageContext.request.contextPath}/rank/theme">테마랭킹</a></h2>
			</div>
			<div id="subheader-mintitle">랭킹 > 테마랭킹</div>



			</div>


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
			
			<!-- aside -->
			<div id="aside">
	
				<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
			
				<div id="aside_cate">
				
					<ul>
					    <li><a href="${pageContext.request.contextPath}/rank/user">유저 랭킹</a></li>
					    <li class="selected"><a href="${pageContext.request.contextPath}/rank/theme">테마 랭킹</a></li>
					</ul>
				
				</div>
				
			</div>
			<!-- //aside -->
			
				<!-- main -->
				<div id="rankMain" class="clearfix">
		   
	
				
				<!-- 스와이퍼 -->
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
									<div class="theme_detail">
										<ul>
											<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>체감난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/red.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
		
									<div class="theme_detail">
										<ul>
										<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/blue.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
		
									<div class="theme_detail">
										<ul>
										<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/green.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
		
									<div class="theme_detail">
										<ul>
											<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/yellow.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
		
									<div class="theme_detail">
										<ul>
											<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						
						<div class="swiper-slide">
							<div class="theme_swiper_list">
								<img id="" class="theme_img" src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg">
								<div id="" class="theme_info">
									<div class="theme_intro">
										<p class="theme_name">방탈출 카페 이름</p>
										<p class="theme_content">방탈출 카페 한줄 소개</p>
									</div>
									<br>
		
									<div class="theme_detail">
										<ul>
											<li>
												<div>
													<span>평점 :&nbsp;</span>
													3.3점
												</div>
											</li>
											<li>
												<div>
													<span>난이도 :&nbsp;</span>
													9.4점
												</div>
											</li>
											<li>
												<div>
													<span>리뷰 :&nbsp;</span>
													1004개
												</div>
											</li>
										
										
										</ul>
		
									</div>
									<br>
									<a class="mbutton">자세히보기</a>
									
								</div>
							</div>
						</div>
						
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-pagination"></div>
				</div>
				<!-- //스와이퍼 -->
				
				<!-- 평점순,리뷰순 -->
				<div id="selectList">
					<span id="listRate" class="selected"><img id="rateIcon" src="${pageContext.request.contextPath }/assets/image/selectedIcon.jpg">평점순</span>
					<span id="listReview"><img id="reviewIcon" src="${pageContext.request.contextPath }/assets/image/unSelectedIcon.jpg">리뷰순</span>
				</div>
				
				
				<div id="rank_list">
					<table id="rank_table">
							<thead>
                               <tr>
                                   <th>순위</th>
                                   <th class="body_img">포스터</th>
                                   <th>테마(카페)명</th>
                                   <th>평점</th>
                                   <th>체감난이도</th>
                                   <th>리뷰</th>
                                   <th></th>
                               </tr>
							</thead>
							                          	
                          	<tbody id="rank_body">
	                          	<c:forEach var="themeRankVo" items="${rankList }">
		                               <tr>
	                          	
		                                   <td class="body_data">${themeRankVo.rank }</td>
		                                   <td class="body_img"><img class="theme_list_img" src="${pageContext.request.contextPath }/upload/${themeRankVo.themeImgPath}"></td>
		                                   <td class="body_data">${themeRankVo.themeName }<br>(${themeRankVo.cafeName })</td>
		                                   <td class="body_data">${themeRankVo.avgRating }점</td>
		                                   <td class="body_data">${themeRankVo.avgDifficulty }점</td>
		                                   <td class="body_data">${themeRankVo.review }</td>
		                                   <td class="body_data"><a class="mbutton">자세히보기</a></td>
	                             
		                               </tr>
	                             </c:forEach>
                             </tbody>
                	</table>             					
				</div>
				
				
				
				
				   
				
				</div>
				<!-- //main -->
			
			</div>
			<!-- contentMain -->
			
		</div>
	    <!-- //content -->
			
			
		<!-- footer -->
		
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		
		<!-- //footer -->
	</div>
	<!-- wrap -->
</body>

<script>
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 3,  //한번에 보여줄 슬라이드 개수
        spaceBetween: 30,  //슬라이드 사이 간격
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          dynamicBullets: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
      
      
      $("#listReview").on("click",function(){
    	  
    	  $("#rank_body").empty()
    	  
    	  $("#listReview").addClass("selected");
    	  $("#listRate").removeClass("selected");
    	  
    	  $("#rateIcon").attr("src","${pageContext.request.contextPath }/assets/image/unSelectedIcon.jpg");
    	  $("#reviewIcon").attr("src","${pageContext.request.contextPath }/assets/image/selectedIcon.jpg");
    	  
    	  var List = "review";
    	  
    	  $.ajax({
  			
  			//request
  			url : "${pageContext.request.contextPath }/rank/theme/getThemeList",
  			type : "GET",
  			//contentType : "application/json",
  			data : {
  				List : List
  			},
  			
  			
  			//response
  			//dataType : "json",
  			success : function(themeRankList) {
  				
  				console.log(themeRankList);
  				
  				for(var i =0 ; i< themeRankList.length; i++){
  					themeRankRender(themeRankList[i]);
  				}
  				
  			},
  			error : function(XHR, status, error) {
  				console.error(status + " : " + error);
  			}
  		});
    	  
    	  console.log ("operated");
      });
      
	  $("#listRate").on("click",function(){
    	  
    	  $("#rank_body").empty()
    	  
    	  $("#listRate").addClass("selected");
    	  $("#listReview").removeClass("selected");
    	  
    	  $("#reviewIcon").attr("src","${pageContext.request.contextPath }/assets/image/unSelectedIcon.jpg");
    	  $("#rateIcon").attr("src","${pageContext.request.contextPath }/assets/image/selectedIcon.jpg");
    	  
    	  var List = "rating";
    	  
    	  $.ajax({
  			
  			//request
  			url : "${pageContext.request.contextPath }/rank/theme/getThemeList",
  			type : "GET",
  			//contentType : "application/json",
  			data : {
  				List : List
  			},
  			
  			
  			//response
  			//dataType : "json",
  			success : function(themeRankList) {
  				
  				console.log(themeRankList);
  				
  				for(var i =0 ; i< themeRankList.length; i++){
  					themeRankRender(themeRankList[i]);
  				}
  				
  			},
  			error : function(XHR, status, error) {
  				console.error(status + " : " + error);
  			}
  		  });
    	  
    	  console.log ("operated");
      });
      
      function themeRankRender(themeRankVo) {
  		var str = '';
  		str += '<tr>';
  		str += '<td class="body_data">'+themeRankVo.rank+'</td>';
  		str += '<td class="body_img"><a><img class="theme_list_img" src="${pageContext.request.contextPath }/upload/'+themeRankVo.themeImgPath+'"></a></td>';
  		str += '<td class="body_data">'+themeRankVo.themeName+'<br>('+themeRankVo.cafeName+')</td>';
  		str += '<td class="body_data">'+themeRankVo.avgRating+'점</td>';
  		str += '<td class="body_data">'+themeRankVo.avgDifficulty+'점</td>';
  		str += '<td class="body_data">'+themeRankVo.review+'</td>';
  		str += '<td class="body_data"><a href="${pageContext.request.contextPath}/cafe/theme/'+themeRankVo.themeNo+'" class="mbutton">자세히보기</a></td>';
  		str += '</tr>';
  		
  		$("#rank_body").append(str);
  		
  		str = '';
  	};
      
</script>
    
    
</html>