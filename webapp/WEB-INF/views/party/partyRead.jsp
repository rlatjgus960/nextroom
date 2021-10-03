<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>파티정보</title>

        <link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath }/assets/css/partyRead.css" rel="stylesheet" type="text/css">

		<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
		
    </head>

    <body>
        <!--헤더영역-->
       <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
        <!-- //헤더영역 -->


        <!-- 본문 제일 큰 틀 -->
        <div id="wrap">

            <!-- content -->
            <div id="content">
    
    
                <div id="subheader" class="clearfix">
                    <div id="subheader-title">
                        <h2>파티정보</h2>
                    </div>
                </div>
    
    
    
                <!-- main -->
                <div id="content_main" class="clearfix">
                    
                    <!-- 정보 보드 -->
                    <div id="board">
                        
                        <!-- 카페테마 메인정보 -->
                        <div id=main_informa>
                           <div class="theme_image">
                               <a href=""><img src="${pageContext.request.contextPath }/assets/image/party/이순신.jpg" width="280px" height="360px"></a>

                           </div>
                           
                           <div class="title">
                                <h3>카페 / 테마 : ${pReadMap.partyReadList.cafeName } / ${pReadMap.partyReadList.themeName }</h3>
                           </div>
                           
                           <div class="party_content">

                                <table>
                                    <tbody>
                                        <td class="title_width">장르 : </td> 
                                        <td>${pReadMap.partyReadList.jenre }</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">모집인원 : </td> 
                                        <td>${pReadMap.partyReadList.reservePerson } 인</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">난이도 : </td> 
                                        <td>${pReadMap.partyReadList.levels } / 5</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">플레이타임 : </td> 
                                        <td>${pReadMap.partyReadList.playTime } 분</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">유형 : </td> 
                                        <td>${pReadMap.partyReadList.themeType }</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">이용일시 : </td> 
                                        <td>${pReadMap.partyReadList.reserveDate } / ${pReadMap.partyReadList.themeTime }</td>
                                    </tbody>
                                    <tbody>
                                        <td id="together" class="title_width">모임글 : </td> 
                                        <td id="together_content">${pReadMap.partyReadList.content }</td>
                                        <!-- 모임글 테이블 만들때 100자 제한하기 -->
                                    </tbody>

                                </table> 
                           </div>

                           <!-- 마스터 버튼 -->
               				<div class="btn_group">
                            	<a href="${pageContext.request.contextPath }/party/partyList"><button id="list_button" class="submit_button">목록</button></a>
                           <c:if test="${sessionScope.authUser.userNo eq pReadMap.partyReadList.userNo }">
                               <button id="delete_button" class="submit_button">파티삭제</button>
                               <button id="complete_button" class="mbutton">모집완료</button>
                           </c:if>
                           </div>	
                           <!-- //마스터 버튼 -->

                            <!-- 참가자 버튼 -->
<!-- 		                         <div class="btn_group"> -->
<!--                                 <button id="list_button" class="submit_button">목록</button> -->
<!--                                 <button id="join_button" class="submit_button">파티참가</button> -->
<!--                                 <button id="cancel_button" class="submit_button">참가취소</button> -->
                            </div>
                            <!-- //참가자 버튼 -->

                        </div>
                        <!-- //카페테마 메인정보 -->


                    </div>
                    <!-- //정보 보드-->

				<!-- 참여현황 -->
                    <div id="party_list">
                        <div id="join_situ">&nbsp;&nbsp;&nbsp;&nbsp;참여현황</div>
                        <table>
                            <colgroup>
                                <col style="width: 120px;">
                                <col style="width: 210px;">
                                <col style="width: 225px;">
                                <col style="width: 185px;">
                                <col style="width: 185px;">
                                <col style="width: 185px;">
                                <col style="width: 185px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>프로필</th>
                                    <th>닉네임</th>
                                    <th>현재 순위</th>
                                    <th>성공률</th>
                                    <th>노힌트 성공률</th>
                                    <th>평균 기록</th>
                                </tr>
                            </thead>

                            <tbody>
                            
                                <tr>
                                    <td>1</td>
                                    <td><img src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg" width="60px" height="60px"></td>
                                    <td>킹갓대니</td>
                                    <td>37위</td>
                                    <td>97%</td>
                                    <td>100%</td>
                                    <td>50m 20s</td>
                                </tr>
                               <tr>
                                    <td>2</td>
                                    <td><img src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg" width="60px" height="60px"></td>
                                    <td>앙기모띠</td>
                                    <td>33위</td>
                                    <td>98%</td>
                                    <td>100%</td>
                                    <td>38m 27s</td>
                                </tr> 
								
                            </tbody>
                        </table>
                    </div>

                    <!-- //참여현황 -->
                    

                    <!-- 대기현황 -->
                    <c:if test="${sessionScope.authUser.userNo eq pReadMap.partyReadList.userNo }">
                    <div id="hold_list">
                        <div id="join_situ">&nbsp;&nbsp;&nbsp;&nbsp;대기현황</div>
                        <table>
                            <colgroup>
                                <col style="width: 120px;">
                                <col style="width: 160px;">
                                <col style="width: 206px;">
                                <col style="width: 162px;">
                                <col style="width: 162px;">
                                <col style="width: 162px;">
                                <col style="width: 162px;">
                                <col style="width: 162px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>프로필</th>
                                    <th>닉네임</th>
                                    <th>현재 순위</th>
                                    <th>성공률</th>
                                    <th>노힌트 성공률</th>
                                    <th>평균 기록</th>
                                    <th>동의여부</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><img src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg" width="60px" height="60px"></td>
                                    <td>이스케이프대니</td>
                                    <td>37위</td>
                                    <td>97%</td>
                                    <td>100%</td>
                                    <td>50m 20s</td>
                                    <td><button>O</button> / <button>X</button></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><img src="${pageContext.request.contextPath }/assets/image/profile/pink.jpg" width="60px" height="60px"></td>
                                    <td>앙기모띠</td>
                                    <td>33위</td>
                                    <td>98%</td>
                                    <td>100%</td>
                                    <td>38m 27s</td>
                                    <td><button>O</button> / <button>X</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    </c:if>
				<!-- //대기현황 -->

			</div>
                <!-- //main -->
                
    
            </div>
            <!-- //content -->
    
    
          <!-- footer -->
    
          <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    
          <!-- //footer -->
       </div>

        <!-- //본문 제일 큰 틀 -->


    </body>
    
    <script>
    /* 상태가 0이면 버튼클릭 or 1이라면 버튼클릭안되게하기 */
    $(document).ready(function() {
    	$("#complete_button").on("click", function() {
			$(this).html('예약하기') 
			
	    	$("#complete_button").click(function() {
				const result = confirm("예약하러 가시겠습니까?");
					if(result) {
						
						$("#complete_button").hide();
						
					} else {
						$("#complete_button").show();
					}
			});
				
		});
    	
    });
    	
    
	</script>


</html>