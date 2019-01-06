<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! String sql; %>
<%! ResultSet rs; //定义结果集对象%>
<%! PreparedStatement pstmt;//定义SQL语句对象 %>
<%! String id; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>delete</title>
</head>
<body bgcolor="#F3F3F3">
<%
id=request.getParameter("id");
try{
	pstmt=conn.prepareStatement(sql);
	sql="delete from student where id="+id+"";
	pstmt.executeUpdate(sql);
	out.println("<font size=3 color=red>正在处理，情稍等...</font><meta http-equiv='refresh' content='2;url=manager.jsp'>");
	pstmt.close();
	conn.close();
}
catch(Exception e){
	response.sendRedirect("err.jsp");
}
%>

</body>
</html>