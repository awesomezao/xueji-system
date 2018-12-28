<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! String sql; %>
<%! ResultSet rs; //定义结果集对象%>
<%! PreparedStatement pstmt;//定义SQL语句对象 %>
<%! String u,p;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>login</title>
</head>
<body>
<%
boolean flag = false;
u= request.getParameter("id");
p= request.getParameter("passwd");
 %>
 <%! String user,pass; %>
<%
String sql = "select id from 登陆 where id=? and passwd=?";
try {
	   pstmt = conn.prepareStatement(sql); 
	   pstmt.setString(1,u);
	   pstmt.setString(2,p);
	   rs = pstmt.executeQuery();
	   if(rs.next()) {
	    out.println(rs.getString("id"));
	    flag = true;
	     session.setAttribute("id",rs.getString("id"));
	   } else {
	    request.setAttribute("err","用户名或密码错误!");
	   }
	  
	   rs.close();
	   pstmt.close();
	   conn.close();

	}catch (Exception e) {
	   out.println(e);
	}
%>
<%
if(flag){%>
<jsp:forward page="list.jsp" />
<%} else {
	   %>
	   <jsp:forward page="err.jsp" />
	   <% }
	
%>


</body>
</html>