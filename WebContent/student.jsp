<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! String sql; %>
<%! ResultSet rs; //定义结果集对象%>
<%! Statement stmt;//定义SQL语句对象 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>student</title>
</head>
<body bgcolor="#F3F3F3" background="images/student.jpg" style="background-size:100% 100%;">
<div align="center"><font color="#31708F" size="5">学籍信息</font>
</div>
<br/>
<br/>
<table  align="center" width="50%" border="1"  cellspacing="0" cellpadding="0" style= "opacity: 0.9;" >
<tr bgcolor=#F3F3F3>
   <td width=15% align="center">学号</td>
  <td width=12% align="center">姓名</td>
  <td width=8% align="center">性别</td>
  <td width=8% align="center">年龄</td>
  <td width=15% align="center">籍贯</td>
  <td width=15% align="center">专业</td>
  <td width=8% align="center">班级</td>
  <td width=12% align="center">民族</td>
</tr>
<%! String u; %>
<%
u=request.getParameter("id");
%>
<%

try
{
    stmt=conn.createStatement();
    sql="select *from student where id='"+u+"'";
    rs= stmt.executeQuery(sql);
while(rs.next()){
%>
<tr bgcolor=#FFFFFF>
  <td width=10% align="center"><%=rs.getObject(1)%></td>
  <td width=10% align="center"><%=rs.getObject(2)%></td>
  <td width=10% align="center"><%=rs.getObject(3)%></td>
  <td width=10% align="center"><%=rs.getObject(4)%></td>
  <td width=10% align="center"><%=rs.getObject(5)%></td>
  <td width=10% align="center"><%=rs.getObject(6)%></td>
  <td width=10% align="center"><%=rs.getObject(7)%></td>
  <td width=10% align="center"><%=rs.getObject(8)%></td>
</tr>
<%
}
rs.close();
stmt.close();
conn.close();
}catch(Exception e)
{
	response.sendRedirect("err.jsp");
}

%>
</table>
</body>
</html>