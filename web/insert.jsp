<%@page contentType="text/html; utf-8" pageEncoding="utf-8" %>
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
<!-- 영화정보 추가 화면 -->
<div data-role="page" id="page1">
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
        <form action="insert_result.jsp" method="post">
            <div class="ui-body ui-body-a">

                <h3>사진 입력</h3>
                <label>사진 이름 :</label>
                <input type="text" name="name" value=""/>
                <label>사진 작가 :</label>
                <input type="text" name="writer" value="">
                <label>올린 날짜(yy/mm/dd):</label>
                <input type="text" name="date" value="">
            </div>
            <div class="ui-body">
                <fieldset class="ui-grid-a">
                    <div class="ui-block-a"><input type="reset" value="취소"/></div>
                    <div class="ui-block-b"><input type="submit" value="추가"/></div>
                </fieldset>
            </div>
        </form>
    </div>
    <div data-role="footer" data-position="fixed" data-theme="b">
        <h4>movie & movie cinema</h4>
    </div>
</div>
</body>
</html>