<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/partyList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">

<title>파티구하기</title>
</head>
<body>
    <!-- 헤더영역 -->
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

    <div id="wrap">

        <!-- content -->
        <div id="content">


            <div id="subheader" class="clearfix">
                <div id="subheader-title">
                    <h1>파티구하기</h1>
                </div>
            </div>



            <!-- main -->
            <div id="content_main" class="clearfix">
                
                <!-- board -->
                <div id="board">

                    <!-- 서치영역 -->
                    <div id="search_area" class="clearfix">
                        <form action="" method="">

                            <select id="party_view" name="party_view">
                                <option value="" selected="">전체보기</option>
                                <option value="party_ing">모집중</option>
                                <option value="party_ed">모집완료</option>
                            </select>

                            <div id="kind">
                                <label for="cafe_pick">카페</label>
                                <input type="checkbox" id="cafe_pick" name="searchPick" value="cafe">

                                <label for="theme_pick">테마</label>
                                <input type="checkbox" id="theme_pick" name="searchPick" value="theme">

                                <input type="text" name="keyword" value="">

                                <button type="submit">검색</button>
                                
                            </div>

                        </form>
                    </div>
                    <!-- //서치영역 -->

                    <!-- 파티리스트 영역 -->
                    <div id="party_list">
                        <table>
                            <colgroup>
                                <col style="width: 150px;">
                                <col style="width: 200px;">
                                <col style="width: 275px">
                                <col style="width: 275px;">
                                <col style="width: 150px;">
                                <col style="width: 150px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>지역</th>
                                    <th>카페 / 테마</th>
                                    <th>날짜</th>
                                    <th>인원</th>
                                    <th>지원현황</th>
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
                                <tr>
                                    <td>1</td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
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
                    <!-- //파티리스트 영역 -->

                    <!-- 페이징 영역 -->
                    <div id="pager">
                        <ol class="clearfix">
                            <li><a href="">◀</a></li>
                            <li><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">4</a></li>
                            <li><a href="">5</a></li>
                            <li><a class="active" href="">6</a></li>
                            <li><a href="">7</a></li>
                            <li><a href="">8</a></li>
                            <li><a href="">9</a></li>
                            <li><a href="">10</a></li>
                            <li><a href="">▶</a></li>
                        </ol>
                    
                        <a id="btn_write" href="">등록하기</a>
                    </div>
                    <!-- 페이징 끝나는 영역 -->

                </div>
                <!-- //board -->
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
</body>
</html>