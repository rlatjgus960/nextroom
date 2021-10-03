<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/userDetail.css" rel="stylesheet" type="text/css">

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
			<div id="subheader-mintitle">랭킹 > 개인상세</div>



			</div>


			<!-- contentMain -->
			<div id="" class="">
			
			<!--userprofile-->

            <div id="user_detail">
                  
                <div class="detail_profile clearfix">
                   
                    <span><img class="detail_profile_img" src="../../../assets/image/profile/red.jpg"></span>
                   
                    <div class="nick_box">
                    <span class="detail_profile_nickname">Junzzang12</span>
                    </div>
                   
                        
                    
                    <ul class="detail_profile_stats">
                        <li>현재순위 : --위</li>
                        <li>성공률 : 33.33%</li>
                        <li>노힌트 성공률 : 0%</li>
                        <li>평균 기록 : 00분 00초</li>
                        <li>전적 300전 100승 200패</li>
                    </ul>
                    
                   
                   
                </div>
                <!--//userprofile-->

                
                
            </div>
			
            
            
            <!--recent play-->
            <div>
                <div id="recentplay_table">
                    <table>
                        <tr>
                            <th>날짜</th>
                            <th>테마</th>
                            <th>기록</th>
                            <th>힌트</th>
                            <th>인원</th>
                            <th>탈출</th>
                        </tr>

                        <tr>
                            <td>2021.08.27</td>
                            <td>비밀의화원 미드나잇</td>
                            <td>57m 40s</td>
                            <td>3 hints</td>
                            <td>2인</td>
                            <td>탈출실패</td>
                        </tr>

                        <tr>
                            <td>2021.07.08</td>
                            <td>싸인이스케이프 홍대점</td>
                            <td>2021070822</td>
                            <td>No hint</td>
                            <td>1인</td>
                            <td>탈출완료</td>
                        </tr>

                        <tr>
                            <td>2021.08.27</td>
                            <td>비밀의화원 미드나잇</td>
                            <td>57m 40s</td>
                            <td>3 hints</td>
                            <td>2인</td>
                            <td>탈출실패</td>
                        </tr>

                        <tr>
                            <td>2021.07.08</td>
                            <td>싸인이스케이프 홍대점</td>
                            <td>2021070822</td>
                            <td>No hint</td>
                            <td>1인</td>
                            <td>탈출완료</td>
                        </tr>

                        <tr>
                            <td>2021.07.08</td>
                            <td>싸인이스케이프 홍대점</td>
                            <td>2021070822</td>
                            <td>No hint</td>
                            <td>1인</td>
                            <td>탈출완료</td>
                        </tr>


                    </table>
                </div>
            </div>

            <div id="paging" class="clearfix">
                <ul>
                    <li><a href="">◀</a></li>
                    <li><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li class="active"><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li><a href="">▶</a></li>
                </ul>
                
                
                <div class="clear"></div>
            </div>


            <!--//recent play-->
				
			
			</div>
			<!-- contentMain -->
			
		</div>

      <!-- //content -->


		<!-- footer -->

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->
	</div>

</body>
</html>