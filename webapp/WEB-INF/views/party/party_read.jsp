<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>파티정보</title>

        <link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath }/assets/css/partyRead.css" rel="stylesheet" type="text/css">

    </head>

    <body>
        <!--헤더영역-->
        <div id="header">
            <div id="header-item">
                <a><img id="logo" src="${pageContext.request.contextPath }/assets/image/logo.jpg"></a>
    
    
                <div id="nav" >
    
                    <ul id="bar">
                        <li><a href="">카페/테마</a></li>
                        <li><a href="">예약</a></li>
                        <li><a href="">파티구하기</a></li>
                        <li><a href="">랭킹</a></li>
                        <li><a href="">커뮤니티</a></li>
                    </ul>
    
    
                    <ul id="login_area">
                        <li><a href="" class=""><img id="" src="${pageContext.request.contextPath }/assets/image/messageicon.jpg"></a></li>
                        <li><a href="" class=""><img id="" src="${pageContext.request.contextPath }/assets/image/alerticon.jpg"></a></li>
                        <li class="line-right mypageIcon"><a href="" class="btn_s">로그아웃</a></li>
                        <li class="mypageBtn"><a href="" class="btn_s">마이페이지</a></li>
                    </ul>
                </div>  
            </div>
        </div>
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
                                <h3>카페 / 테마 : 무닐리사 / 1592 임진왜란 충무공 이순신</h3>
                           </div>
                           
                           <div class="party_content">

                                <table>
                                    <tbody>
                                        <td class="title_width">장르 : </td> 
                                        <td>느와르</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">모집인원 : </td> 
                                        <td>4인</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">난이도 : </td> 
                                        <td>★ ★ ★ ☆ ☆ (3.0)</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">플레이타임 : </td> 
                                        <td>60분</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">유형 : </td> 
                                        <td>자물쇠 위주</td>
                                    </tbody>
                                    <tbody>
                                        <td class="title_width">이용일시 : </td> 
                                        <td>2021.08.27 - 14:20</td>
                                    </tbody>
                                    <tbody>
                                        <td id="together" class="title_width">모임글 : </td> 
                                        <td id="together_content">극쫄은 안되시구 극탱 중수 모집합아아아아아아ㅇㅎㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ핳ㅇ항나으으응아아아아아앙</td>
                                        <!-- 모임글 테이블 만들때 100자 제한하기 -->
                                    </tbody>

                                </table> 
                           </div>

                           <!-- 마스터 버튼 -->
                           <div class="btn_group">
                               <button class="submit_button">목록</button>
                               <button class="submit_button">파티삭제</button>
                               <button class="submit_button">모집완료</button>
                           </div>
                           <!-- //마스터 버튼 -->

                            <!-- 참가자 버튼 -->
                            <!-- <div class="btn_group">
                                <button class="submit_button">목록</button>
                                <button class="submit_button">파티참가</button>
                                <button class="submit_button">참가취소</button>
                            </div> -->
                            <!-- //참가자 버튼 -->

                        </div>
                        <!-- //카페테마 메인정보 -->


                    </div>
                    <!-- //정보 보드-->

                    <!-- 참여현황 -->
                    <div id="party_list">
                        <table>
                            <colgroup>
                                <col style="width: 100px;">
                                <col style="width: 170px;">
                                <col style="width: 240px;">
                                <col style="width: 230px;">
                                <col style="width: 90px;">
                                <col style="width: 140px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>No</th>
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
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                         
								
                            </tbody>
                        </table>
                    </div>

                    <!-- //참여현황 -->
                    
                </div>
                <!-- //main -->
                
    
            </div>
            <!-- //content -->
    
    
          <!-- footer -->
    
          <div id="footer">
             상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
             서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.
    
           </div>
    
          <!-- //footer -->
       </div>

        <!-- //본문 제일 큰 틀 -->


    </body>


</html>