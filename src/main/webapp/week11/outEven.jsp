<%--
  Created by IntelliJ IDEA.
  User: wingw
  Date: 2024-11-14
  Time: 오전 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    for (int cnt = 1; cnt < 10; cnt++) {
      if (cnt % 2 == 0) {
        out.println(cnt + "<br>");
      }
    }
  %>
</body>
</html>
