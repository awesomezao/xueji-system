<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学籍管理系统：登录</title>
</head>
<body>
<center>
          用户登录<br>
    <hr>
    <form action="login.jsp" method="post" target="_blank">
    	用户名：<input type="text" name="id"/><br>
    	密  码：<input type="password" name="passwd"/><br>
    	<input type="submit" value="登录"/>
    	<input type="reset" value="重置"/>
    </form>
   </center> 
 </body>
</html>
