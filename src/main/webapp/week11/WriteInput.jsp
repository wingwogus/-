<%--
  Created by IntelliJ IDEA.
  User: wingw
  Date: 2024-11-14
  Time: 오전 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="WriteProcess.jsp" method="post">
        <p>이름: <input type="text" name="name"></p>
        <p>제목: <input type="text" name="title"></p>
        <textarea cols="30" rows="5" name="content"></textarea><br>
        <input type="submit" value="저장">
    </form>
</body>
</html>
