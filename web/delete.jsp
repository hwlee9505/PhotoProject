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
<!-- 삭제 영화정보 검색 다이알로그 -->
<div data-role="dialog" id="page3">
    <div data-role="header" data-theme="b">
        <h1>사진 검색</h1>
    </div>
    <div data-role="content">
        <h3>삭제할 사진 검색</h3>
        <form name="form3" method="post" action="delete_result.jsp" data-ajax="false">
            <div class="ui-body ui-body-a"></br>
                삭제할 사진 번호 :</br>
                <input type="text" name="id" value=""/></br>
            </div></br>
            <input data-inline="true" type="submit" value="삭제"/>
            <a data-inline="true" data-role="button" data-rel="back">취소</a>
        </form>
    </div>
</div>
</body>
</html>