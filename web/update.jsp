<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/6
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改公告信息</title>
</head>
<body>
<h2 align="center">修改公告信息</h2>
<br>
<form action="update_control.jsp">
<table align="center">
    <tr>
        <td>编号:</td>
        <td><input name="account" value="<%=request.getParameter("account")%>" readonly="readonly" /></td>
    </tr>
    <tr>
        <td>标题:</td>
        <td><input name="name" value="<%=request.getParameter("name")%>" /></td>
    </tr>
    <tr>
        <td>内容:</td>
        <td><input name="content" value="<%=request.getParameter("content")%>" /></td>
    </tr>
    <tr>
        <td><input type="submit" value="提交"/></td>
    </tr>
</table>
</form>
</body>
</html>
