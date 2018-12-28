<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学籍管理系统：登录</title> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>后台管理</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div class="login_box">
      <div class="login_l_img"><img src="images/login-img.jpg" /></div>
      <div class="login">
          <div class="login_logo"><a href="#"><img src="images/login_logo.jpg" /></a></div>
          <div class="login_name">
               <p>学籍管理系统</p>
          </div>
          <form method="post" action="login.jsp" target="_blanck">
              <input name="id" type="text"  value="账号" onfocus="this.value=''" 
                     onblur="if(this.value==''){this.value='账号'}">
              <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
             <input name="passwd" type="password" id="password" style="display:none;" 
              onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
              <input value="登录" style="width:100%;" type="submit">
          </form>
      </div>
      <div class="copyright">ZAO 版权所有©2018-2019 QQ：1064216064</div>
</div>
 </body>
</html>
