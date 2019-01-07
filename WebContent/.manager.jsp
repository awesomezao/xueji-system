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
<style type="text/css">
#home {position:absolute;top:10px;right:10px;}
#home img{width:30px;height:30px;padding-right:10px;}
</style>
</head>
<body bgcolor="#F3F3F3" background="images/manager.jpg" style="background-size:100% 100%;">
<div align="center"><font color="#31708F" size="5">学籍信息</font>
</div>
<br/>
<br/>
<div id="home">
<img src="images/home.png"  alt="返回主页"  onclick="javascript:location.href='index.jsp'"/>
<img src="images/back.png"  alt="返回上一页"  onclick="javascript:history.back(-1);"/>
</div>
<script>
		   alert("删除成功")
		   </script>
<table  align="center" width="50%" border="1" cellspacing="0" cellpadding="0" style= "opacity: 0.9;">
<tr bgcolor=#F3F3F3>
  <td width=15% align="center">学号</td>
  <td width=12% align="center">姓名</td>
  <td width=8% align="center">性别</td>
  <td width=8% align="center">年龄</td>
  <td width=15% align="center">籍贯</td>
  <td width=15% align="center">专业</td>
  <td width=8% align="center">班级</td>
  <td width=12% align="center">民族</td>
  <td width=3% align="center" >更改</td>
  <td width=3% align="center" >删除</td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">202</td>
  <td width=10% align="center">李四      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">20</td>
  <td width=10% align="center">重庆南岸  </td>
  <td width=10% align="center">计算机    </td>
  <td width=10% align="center">3</td>
  <td width=10% align="center">土家族    </td>
  <td width=10% align="center" ><a href="update.jsp?id=202">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=202">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">303</td>
  <td width=10% align="center">王麻子    </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">19</td>
  <td width=10% align="center">浙江杭州  </td>
  <td width=10% align="center">传媒      </td>
  <td width=10% align="center">9</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=303">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=303">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">404</td>
  <td width=10% align="center">周天      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">21</td>
  <td width=10% align="center">湖北武汉  </td>
  <td width=10% align="center">生物工程  </td>
  <td width=10% align="center">7</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=404">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=404">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">102</td>
  <td width=10% align="center">韩梅梅    </td>
  <td width=10% align="center">女        </td>
  <td width=10% align="center">20</td>
  <td width=10% align="center">台湾台北  </td>
  <td width=10% align="center">软件工程  </td>
  <td width=10% align="center">5</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=102">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=102">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">204</td>
  <td width=10% align="center">李雷      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">19</td>
  <td width=10% align="center">四川达州  </td>
  <td width=10% align="center">计算机    </td>
  <td width=10% align="center">4</td>
  <td width=10% align="center">苗族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=204">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=204">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">103</td>
  <td width=10% align="center">王川      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">20</td>
  <td width=10% align="center">重庆渝北  </td>
  <td width=10% align="center">计算机    </td>
  <td width=10% align="center">5</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=103">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=103">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">104</td>
  <td width=10% align="center">周五      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">19</td>
  <td width=10% align="center">重庆南岸  </td>
  <td width=10% align="center">软件工程  </td>
  <td width=10% align="center">2</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=104">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=104">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">105</td>
  <td width=10% align="center">周六      </td>
  <td width=10% align="center">女        </td>
  <td width=10% align="center">19</td>
  <td width=10% align="center">四川达州  </td>
  <td width=10% align="center">软件工程  </td>
  <td width=10% align="center">3</td>
  <td width=10% align="center">苗族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=105">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=105">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">203</td>
  <td width=10% align="center">李阿      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">20</td>
  <td width=10% align="center">重庆南岸  </td>
  <td width=10% align="center">计算机    </td>
  <td width=10% align="center">4</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=203">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=203">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">505</td>
  <td width=10% align="center">李阳      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">20</td>
  <td width=10% align="center">重庆江北  </td>
  <td width=10% align="center">传媒      </td>
  <td width=10% align="center">6</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=505">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=505">删除</a></td>
</tr>

<tr bgcolor=#FFFFFF>
  <td width=10% align="center">606</td>
  <td width=10% align="center">赵四      </td>
  <td width=10% align="center">男        </td>
  <td width=10% align="center">19</td>
  <td width=10% align="center">重庆渝中  </td>
  <td width=10% align="center">自动化    </td>
  <td width=10% align="center">7</td>
  <td width=10% align="center">汉族      </td>
  <td width=10% align="center" ><a href="update.jsp?id=606">修改</a></td>
  <td width=10% align="center"><a href="delete.jsp?id=606">删除</a></td>
</tr>

</table>
<div align="center"><button type="button" style="height:40px;width:120px;"><a href="insert.jsp" style="text-decoration:none;">添加新纪录</a></button></div>
</body>
</html>