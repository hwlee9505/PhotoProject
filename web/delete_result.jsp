<%@page contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@ page import="main.PhotoDAO" %>
<%@ page import="main.Photo" %>
<%
    request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, width=device-width">
    <title>영화 관리</title>
    <!-- 제이쿼리 모바일, 제이쿼리 라이브러리 화일 -->
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com//bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    if(new PhotoDAO().deletePhoto(id) == 1){
        response.sendRedirect("selectAll.jsp");

    }else{
        out.print("삭제 실패...");
    }

%>


</body>
</html>