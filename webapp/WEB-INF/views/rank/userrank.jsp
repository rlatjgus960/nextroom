<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/rank.css" rel="stylesheet" type="text/css">

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">

		<!-- 헤더영역 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- //헤더영역 -->


		<!-- content -->
      <div id="content">


         <div id="subheader" class="clearfix">
            <div id="subheader-title">
               <h1>랭킹</h1>
            </div>
            <div id="subheader-mintitle">랭킹 > 유저랭킹</div>



         </div>



         <div id="contentMain" class="clearfix">
            <!-- aside -->
            <div id="aside">
                    <img id="aside_img" src="C:/javaStudy/workspace_web/nextroom_p/webapp/assets/image/rrr.png" width="35px" height="35px">
                    
                    <div id="aside_cate">
			
                        <ul>
                            <li>유저 랭킹</li>
                            <li>테마 랭킹</li>
                        </ul>
            
                    </div>
                </div>
            <!-- //aside -->

            <!-- main -->
            <div id="rankMain" class="clearfix">
               

               <!--검색-->
               <div class="clearfix">

                  <form action="" id="searchbar" method="GET">
                     <span>닉네임 검색 :  </span>
                     <input type="text" name="keyword">
                     <button type="submit">검색</button >

                  </form>

               </div>
               <!--//검색-->


               <!--랭킹-->
               <div id="rank1">
                  
                     <div class="rank1_area clearfix">
                        
                           <span><img class="f-left rank_profile img-circle" src="../../../upload/레드.jpg"></span>
                        
                        
                           <h1 class="m-left f-left">Junzzang</h1>
                        
                        
                           <ul class="rank_detail">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                        
                     </div>
                  
            
               </div>

               <div id="rank2-5" class="clearfix">
                  <div id="sec_pool">
                     <ul>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="../../../upload/블루.jpg"></span>
                           
                           
                              <h2 class="">Junzzang</h2>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="../../../upload/옐로.jpg"></span>
                           
                           
                              <h2 class="">Junzzang</h2>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="../../../upload/핑크.jpg"></span>
                           
                           
                              <h2 class="">Junzzang</h2>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="../../../upload/그린.jpg"></span>
                           
                           
                              <h2 class="">Junzzang</h2>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                     </ul>
                  </div>


               </div>

              
               <div id="rank6-">
                  <ul id="third_pool">
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>
                     <li>Junzzang</li>
                     <li>KingGodDanny</li>
                     <li>YeJin</li>
                     <li>SeoHyun</li>
                     <li>Wonhou</li>

                   </ul>
               </div>

               <!--랭킹-->
               

            </div>
            <!-- //main -->
         </div>


      </div>

      <!-- //content -->


		<!-- footer -->

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->
	</div>

</body>
</html>