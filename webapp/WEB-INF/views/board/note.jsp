<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/board_css/post.css" rel="stylesheet" type="text/css">


<title>쪽지 보내기</title>
</head>
<body>
    
    <div id="note_wrap">
        <form action="" method="get">
            <table>
                <thead>
                    <tr>
                        <th id="note_title">쪽지 보내기</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td class="input_nickname">
                            <span>받는 사람 : </span>
                            <span>킹갓대니</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea placeholder="내용을 입력해주세요"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="submit-button">보내기</button>
                            <button class="submit-button">취소</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</body>
</html>