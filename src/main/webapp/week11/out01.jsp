<%--
  Created by IntelliJ IDEA.
  User: wingw
  Date: 2024-11-14
  Time: 오전 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        out.println("오늘의 날짜 및 시각 <br>");
        out.println(java.util.Calendar.getInstance().getTime());
    %>
</body>
</html>
