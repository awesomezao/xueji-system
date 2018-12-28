<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ include file="connection.jsp" %>
<%! String sql; %>
<%! ResultSet rs; //定义结果集对象%>
<%! PreparedStatement pstmt;//定义SQL语句对象 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>query</title>
</head>
<body>
<%! String id,name,sex,age,jiguan,zhuanye,banji,minzu; %>
<%! int i,j,k; %>
<% 
id=request.getParameter("id").trim();
i=Integer.parseInt(id);
name=request.getParameter("name").trim(); 
name=new String(name.getBytes("ISO8859_1"),"GB2312");
sex=request.getParameter("sex").trim(); 
sex=new String(sex.getBytes("ISO8859_1"),"GB2312");
age=request.getParameter("age").trim(); 
j=Integer.parseInt(age);
jiguan=request.getParameter("jiguan").trim(); 
jiguan=new String(jiguan.getBytes("ISO8859_1"),"GB2312");
zhuanye=request.getParameter("zhuanye").trim();
zhuanye=new String(zhuanye.getBytes("ISO8859_1"),"GB2312");
banji=request.getParameter("banji").trim(); 
k=Integer.parseInt(banji);
minzu=request.getParameter("minzu").trim(); 
minzu=new String(minzu.getBytes("ISO8859_1"),"GB2312");

if(id.length()!=3){response.sendRedirect("err.jsp");}

try{
	pstmt=conn.prepareStatement(sql);
	sql="select * from xueji where id='"+id+"'";
	rs=pstmt.executeQuery(sql);
	if(rs.getRow()>0)
	{
		response.sendRedirect("err.jsp");
	}
	sql="insert into xueji (id,name,sex,age,jiguan,zhuanye,banji,minzu)";
	sql=sql+"values('"+i+"','"+name+"','"+sex+"','"+j+"','"+jiguan+"','"+zhuanye+"','"+k+"','"+minzu+"')";
	pstmt.executeUpdate(sql);
	out.println("<font size=3 color=red>正在处理，请稍等...</font>meta http-equiv='refresh' content='2;url=list.jsp'>");
	rs.close();
	pstmt.close();
	conn.close();		
}
catch(Exception e){
	response.sendRedirect("err.jsp");
}



%>
</body>
</html>