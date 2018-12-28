<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! String sql; %>
<%! ResultSet rs; //定义结果集对象%>
<%! Statement stmt;//定义SQL语句对象 %>
<%! PreparedStatement pstmt;//定义SQL语句对象 %>
<%! int i; %>
<%! String id; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FBF7EC">
<div align="center"><font color="#000000" size="5">学籍管理系统</font>
</div>
<table  align="center" width="50%" border="1" cellspacing="1" cellpadding="1">
<tr>
  <td width=12% align="center">学号</td>
  <td width=12% align="center">姓名</td>
  <td width=5% align="center">性别</td>
  <td width=5% align="center">年龄</td>
  <td width=12% align="center">籍贯</td>
  <td width=12% align="center">专业</td>
  <td width=5% align="center">班级</td>
  <td width=12% align="center">民族</td>
  <td width=12% align="center">更改</td>
  <td width=12% align="center">删除</td>
</tr>
<%

try
{
	stmt=conn.createStatement();
    sql="select *from student";
    rs= stmt.executeQuery(sql);
while(rs.next()){
%>
<tr>
  <td width=10% align="center"><%=rs.getObject(1)%></td>
  <td width=10% align="center"><%=rs.getObject(2)%></td>
  <td width=10% align="center"><%=rs.getObject(3)%></td>
  <td width=10% align="center"><%=rs.getObject(4)%></td>
  <td width=10% align="center"><%=rs.getObject(5)%></td>
  <td width=10% align="center"><%=rs.getObject(6)%></td>
  <td width=10% align="center"><%=rs.getObject(7)%></td>
  <td width=10% align="center"><%=rs.getObject(8)%></td>
  <td width=10% align="center" ><a href="update.jsp?id=<%=rs.getObject(1)%>">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=<%=rs.getObject(1)%>">删除</a></td>
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
<div align="center"><a href="insert.jsp">添加新纪录</a></div>
</body>
</html>