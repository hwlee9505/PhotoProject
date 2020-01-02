<%@page contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%@ page import="main.PhotoDAO" %>
<%@ page import="main.Photo" %>
<%@ page import="java.util.ArrayList" %>

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
<!-- 전체 영화조회 화면 -->
<div data-role="page" id="page4">
    <div data-role="header" data-position="fixed" data-theme="b">
        <a href="#" data-icon="back" data-rel="back">Back</a>
        <h1>영화 정보</h1>
        <a href="index.html" data-icon="home" data-iconpos="notext">Home</a>
        <div data-role="navbar">
            <ul>
                <li><a href="insert.jsp">입력</a></li>
                <li><a href="update.jsp">수정</a></li>
                <li><a href="delete.jsp">삭제</a></li>
                <li><a href="selectAll.jsp">전체검색</a></li>
            </ul>
        </div>
    </div>

    <div data-role="content">
        <ul data-role="listview" data-divider-theme="b" data-inset="true">
            <table class="table table-dark table-striped">
                <thead class="thead-dark">
                <tr>
                    <th> Id </th>
                    <th> Name </th>
                    <th> Writer </th>
                    <th> Date </th>
                    <th> Image </th>
                </tr>
                </thead>
                <%
                    ArrayList<Photo> pArr = new PhotoDAO().selectAll();

                    for (int i = 0; i < pArr.size(); i++) {
                %>

                <tr>
                    <td><%=pArr.get(i).photo_id%></td>
                    <td><%=pArr.get(i).name%></td>
                    <td><%=pArr.get(i).writer%></td>
                    <td><%=pArr.get(i).date%></td>
                   <td><img src="img/<%=pArr.get(i).name%>.jpg" width="50px" height="50px"/></td>
                </tr>
                <%
                    }
                %>

            </table>

        </ul>
    </div>
    <div data-role="footer" data-position="fixed" data-theme="b">
        <h4>photo & photo book</h4>
    </div>
</div>
</body>
</html>