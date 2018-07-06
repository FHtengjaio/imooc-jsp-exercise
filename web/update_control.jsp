<%@ page import="com.imooc_exercise.Message.Message" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.imooc_exercise.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/6
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改成功</title>
</head>
<body>
<%
    String account = request.getParameter("account");
    String name = request.getParameter("name");
    String content = request.getParameter("content");

    Map<String, Message> messageMap = DBUtil.messageMap;

    Message m = messageMap.get(account);

    m.setContent(content);
    m.setName(name);
%>
<h2 align="center">修改成功</h2>
</body>
</html>
