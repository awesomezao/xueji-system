<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%//@ include file="connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>insert</title>
</head>
<body>
<div align="center"> <font color="#000000" size="5">添加新纪录</font> </div>
<form  name="form1" method="post" action="query.jsp" >
<table width="35%" border="1" cellspacing="1" cellpadding="1"  align="center"    >
<tr>
<td width="46%" align="center">学号 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="id"  size="7"> </td>
</tr>
<tr>
<td width="46%" align="center">姓名 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="name"  size="8"> </td>
</tr>
<tr>
<td width="46%" align="center">性别</td>
<td width="54%"> &nbsp;&nbsp;&nbsp;
<select name="sex" size="1" >

<option value="男" selected>男</option>
<option value="女" >女</option>
</select> </td></tr>
<tr>
<td width="46%" align="center">年龄 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="age"  size="2"> </td>
</tr>
<tr>
<td width="46%" align="center">籍贯 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="jiguan"  size="7"> </td>
</tr>
<tr>
<td width="46%" align="center">专业 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="zhuanye"  size="7"> </td>
</tr>
<tr>
<td width="46%" align="center">班级 </td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="banji"  size="7"> </td>
</tr>
<tr>
<td width="46%" align="center">民族</td>
<td width="54%"> &nbsp;&nbsp;&nbsp;<input type="text" name="minzu"  size="7"> </td>
</tr>
<tr align="center">
<td  colspan="2" align="center" >
<input type="submit" name="Submit" value="提交" >&nbsp;&nbsp;&nbsp;
<input type="reset" name="reset" value="清空" >
</td>
</tr>

</table>


</form>

</body>
</html>