<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/rankUser.css" rel="stylesheet" type="text/css">

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
               <h2>랭킹</h2>
            </div>
            <div id="subheader-mintitle">랭킹 > 유저랭킹</div>



         </div>



         <div id="contentMain" class="clearfix">
            <!-- aside -->
           <c:import url="/WEB-INF/views/includes/rank_aside.jsp"></c:import>
            <!-- //aside -->

            <!-- main -->
            <div id="rankMain" class="clearfix">
               

               <!--검색-->
               <div class="clearfix">
               	
               		<form id="searchbar" class="" action="" method="get">
						<div class="form-group text-right">
							<span>검색 :&nbsp;</span>
							<input placeholder="닉네임을 입력하세요." type="text" name="keyword">
							<button type="submit" id=btn_search class="search_button">검색</button>
						</div>
					</form>

                  

               </div>
               <!--//검색-->


              <div id="rank1">
                  
                     <div class="rank1_area clearfix">
                        
                           <span><img class="f-left rank_profile img-circle" src="${pageContext.request.contextPath }/assets/image/profile/red.jpg"></span>
                        
                        
                           <p class="first_font m-left f-left">Junzzang</p>
                        
                        
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
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/blue.jpg"></span>
                           
                           
                              <p class="sec_font">Junzzang</p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/yellow.jpg"></span>
                           
                           
                              <p class="sec_font">Junzzang</p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg"></span>
                           
                           
                              <p class="sec_font">Junzzang</p>
                           
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        
                           </div>
                        </li>
                        <li>
                           <div class="">
                        
                              <span><img class="rank_profile" src="${pageContext.request.contextPath }/assets/image/profile/green.jpg"></span>
                           
                           
                              <p class="sec_font">Junzzang</p>
                           
                           
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
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/162987894184116907021-a01a-4bdc-ac86-936ae366b7b8.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/porori.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     <li>
                        <div class="rank_list">
                        
                           <span><img class="f-left ranklist_profile m-right" src="${pageContext.request.contextPath }/assets/image/profile/neoburi.jpg"></span>
                        
                        
                           <p class="f-left">Junzzang</p>
                        
                        
                           <ul class="ranklist_detail f-right">
                              <li>성공률 : 33.33%</li>
                              <li>노힌트 성공률 : 0%</li>
                              <li>전적 300전 100승 200패</li>
                           </ul>
                        
                     
                        </div>
                     </li>
                     
                     

                     

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