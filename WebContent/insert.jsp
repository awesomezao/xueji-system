<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>insert</title>
<style type="text/css">
#home {position:absolute;top:10px;right:10px;}
#home img{width:30px;height:30px;padding-right:10px;}
</style>
</head>
<body bgcolor="#F3F3F3" background="images/insert.jpg" style="background-size:100% 100%;">
<div align="center"> <font color="#31708F" size="5">添加新纪录</font> </div>
<br/>
<br/>
<div id="home">
<img src="images/home.png"  alt="返回主页"  onclick="javascript:location.href='index.jsp'"/>
<img src="images/back.png"  alt="返回上一页"  onclick="javascript:history.back(-1);"/>
</div>
<form  name="form1" method="post" action="query.jsp" >
<table width="35%" border="1" cellspacing="0" cellpadding="0"  align="center"   style= "opacity: 0.9;" >
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">学号 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="id" style="border:none" size="7"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">姓名 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="name" style="border:none" size="8"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">性别</td>
<td width="50%"> &nbsp;&nbsp;&nbsp;
<select name="sex" size="1" >

<option value="男" selected>男</option>
<option value="女" >女</option>
</select> </td></tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">年龄 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="age" style="border:none" size="2"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">籍贯 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="jiguan" style="border:none" size="7"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">专业 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="zhuanye" style="border:none" size="7"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">班级 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="banji" style="border:none" size="7"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">民族</td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="minzu" style="border:none" size="7"> </td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">密码(默认)</td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="passwd" style="border:none" size="7" value="123456"> </td>
</tr>
<tr align="center" bgcolor=#F2F2F2>
<td  colspan="2" align="center" >
<input type="submit" name="Submit" value="提交" >&nbsp;&nbsp;
<input type="reset" name="reset" value="清空" >
</td>
</tr>

</table>
</form>

</body>
</html>