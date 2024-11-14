<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.FileNotFoundException" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: wingw
  Date: 2024-11-14
  Time: 오전 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    BufferedReader br = null;
      try {
      String filePath = application.getRealPath("/WEB-INF/computer.txt");
       br = new BufferedReader(new FileReader(filePath));

      while (true) {
        String str = br.readLine();
        if (str == null) {
          break;
        }
        out.println(str + "<br>");
      }
      out.println(filePath);
    } catch (FileNotFoundException e) {
      out.println("파일이 존재하지 않습니다");
    } catch (IOException e) {
      out.println("파일을 읽을 수 없습니다");
    }
    finally {
      try {
        br.close();
      } catch (Exception e) {
      }
    }

  %>
</body>
</html>
