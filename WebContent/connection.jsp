
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%! Connection conn;//定义数据库连接对象 %>
 <% 
    try {  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//加载驱动
         try{ String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=xueji";//地址+端口号，数据库名字
			  String user="sa";//登录名
			  String password="123456";//登陆密码
			  conn=DriverManager.getConnection(uri,user,password);
			  out.println("连接数据库成功！");
            }
		catch(SQLException e){
		      out.print("SQL Server连接失败！");}         
        }
    catch(Exception e){
  	     out.println("加载驱动失败！");}   
%>