<%@ page import="com.imooc_exercise.Message.Message" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.imooc_exercise.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/6
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除成功</title>
</head>
<body>
    <%
        String account = request.getParameter("account");

        Map<String, Message> messageMap = DBUtil.messageMap;
        messageMap.remove(account);
    %>
    <h2 align="center">删除公告编号为:<%=account%></h2>
</body>
</html>
