<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! ResultSet rs; //定义结果集对象%>
<%! Statement stmt;//定义SQL语句对象 %>
<%! PreparedStatement pstmt;//定义SQL语句对象 %>
<%! String id,sql; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>update</title>
<style type="text/css">
#home {position:absolute;top:10px;right:10px;}
#home img{width:30px;height:30px;padding-right:10px;}
</style>
</head>
<body bgcolor="#F3F3F3" background="images/update.jpg" style="background-size:100% 100%;">
<%
id=request.getParameter("id").trim();
try{
	stmt=conn.createStatement();
	sql="select * from 学生 where id='"+id+"'";
	rs=stmt.executeQuery(sql);
	while(rs.next()){
%>
<div align="center"> <font color="#31708F" size="5">修改密码</font> </div>
<br/>
<br/>
<div id="home">
<img src="images/home.png"  alt="返回主页"  onclick="javascript:location.href='index.jsp'"/>
<img src="images/back.png"  alt="返回上一页"  onclick="javascript:history.back(-1);"/>
</div>
<form name="form1" method="post" action="passwd query.jsp?id=<%=id%>">
<table width="35%" border="1" cellspacing="0" cellpadding="0"  align="center"   style= "opacity: 0.9;" >
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">学号 </td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<%=rs.getObject(1) %></td>
</tr>
<tr bgcolor=#FFFFFF>
<td width="50%" align="center">密码</td>
<td width="50%"> &nbsp;&nbsp;&nbsp;<input type="text" name="passwd" style="border:none"  size="7" value=<%=rs.getObject(2) %>> </td>
</tr>
<tr align="center" bgcolor=#F2F2F2>
<td  colspan="2" align="center" >
<input type="submit" name="Submit" value="提交" >&nbsp;&nbsp;
<input type="reset" name="reset" value="清空" >
</td>
</tr>

</table>
</form>
<%
}
rs.close();
stmt.close();
conn.close();
}
catch(Exception e){
	response.sendRedirect("err.jsp");
}
%>
</body>
</html>