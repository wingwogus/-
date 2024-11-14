<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileNotFoundException" %><%--
  Created by IntelliJ IDEA.
  User: wingw
  Date: 2024-11-14
  Time: 오전 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    String name = request.getParameter("name");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    PrintWriter writer = null;

    try {
      String filePath = application.getRealPath("/WEB-INF/computer.txt");
      writer = new PrintWriter(filePath);
      writer.printf("제목 %s %n", title);
      writer.printf("글쓴이 %s %n", name);
      writer.printf(content);
      out.println("저장되었습니다");
    } catch (FileNotFoundException e) {
      out.println("파일을 찾을 수 없습니다");
    } catch (IOException e) {
      out.println("파일에 데이터를 작성할 수 없습니다");
    } finally {
      writer.close();
    }
  %>
</body>
</html>
