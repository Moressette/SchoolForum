<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  response.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" scope="session" class="com.moressette.schoolforum.UserBean"/>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if(user.getUsername() == null){    
		out.println("<script type='text/javascript'>alert('您还没有登录，请先登录');window.location.href='login.jsp'; </script>");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5;URL=http://localhost:8080/SchoolForum/login.jsp"> 
<title>天津大学仁爱学院BBS论坛</title>

    <!--Loading CSS-->
    <link href="dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="dist/css/flat-ui.css" rel="stylesheet">
    <link href="dist/css/bootstrapValidator.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
</head>


<body>
    <!--HEADER-->
    <div class="header">
        <div class="container">
            <h1 style="color:#2f4154"><img src="img/logo_new.jpg" width="100px" height="100px" style="margin-right:20px">天津大学仁爱学院BBS论坛</h1>
        </div>
    </div>
    <!--HEADER END-->

    <!--TITLE-->
    <div class="titleColor">
        <div class="container">
            <font style="color:#ffffff;font-size:50px;font-family:微软雅黑">新用户注册</font>
        </div>
    </div>
    <!--TITLE END-->
    
	<div class="container">
		<div class="row">
		</div><br>
        <div class="row">
        <br>
        <center>
        <font style="font-family:微软雅黑; font-size:52px;"><img style="width:60px;height:60px"src="img/completed.png"/>&nbsp;注册成功</font>
        <br><font style="font-family:微软雅黑; font-size:22px;">5秒后自动<a href="login.jsp" style="color:#85939b;text-decoration: underline">跳转</a></font>
        </center>
        </div>
    </div>
    
    <!--Footer-->
    <div class="footer" style="margin-top:350px">
        <div class="container">
           <center>
            <p>
                Powered by <a href="http://v3.bootcss.com/" target="_Blank">Bootstrap</a> | Designed by <a href="http://ten-min.com" target="_Blank">Moressette</a> | <a href="http://blog.csdn.net/wangcong9614/" target="_Blank">blog</a> & <a href="http://github.com/Moressette" target="_Blank">Github</a> <br>
                Special thanks to <a href="http://glyphicons.com/">glyphicons</a> | Promote <a href="https://developer.mozilla.org/zh-CN/" target="_Blank">MDN</a> | <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh_TW" target="_Blank">Creative Commons</a>
            </p>
            </center>
        </div>
    </div>
    <!--Footer END-->
</body>
</html>
