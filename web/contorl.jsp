<%@ page import="com.imooc_exercise.db.DBUtil" %>
<%@ page import="com.imooc_exercise.user.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.imooc_exercise.Message.Message" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/6
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="select.js"></script>
    <title>XX学校信息发布平台</title>
</head>
<body>
<%
    String account = request.getParameter("account");
    String password = request.getParameter("password");

    Map<String, User> userMap = DBUtil.userMap;
    Map<String, Message> messageMap = DBUtil.messageMap;

    boolean flag = DBUtil.judgeAccount(account, password);

    if(flag){
%>
    <h2 align="center">XX学校信息发布平台</h2>
    <h3 align="right">欢迎，<%=userMap.get(account).getName()%></h3>
    <hr />
    <table align="center" border="1px">
        <tr>
            <td>公告编号</td>
            <td><input id="selectNumber" type="text" name="selectNumber"/></td>
            <td><input type="button" name="selectbtn" value="select" onclick="selectMessage()"></td>
        </tr>
    </table>
    <br>
    <br>
    <table id="messageList" align="center" border="1px">
        <tr>
            <td>编号</td>
            <td>标题</td>
            <td>内容</td>
            <td>删除</td>
            <td>修改</td>
        </tr>
        <%
            for(String key: messageMap.keySet()){
                Message m = messageMap.get(key);
        %>
                <tr id="<%=m.getNumber()%>">
                    <td><%=m.getNumber()%></td>
                    <td><%=m.getName()%></td>
                    <td><%=m.getContent()%></td>
                    <td><a href="delete.jsp?account=<%=m.getNumber()%>">Delete</a></td>
                    <td><a href="update.jsp?account=<%=m.getNumber()%>&name=<%=m.getName()%>
                    &content=<%=m.getContent()%>">Update</a></td>
                </tr>
        <%}%>
    </table>
<%}else{%>
<h2 align="center">账号密码错误或账号不存在</h2>
<%}%>
</body>
</html>
