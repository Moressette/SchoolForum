<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  response.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" scope="session" class="com.moressette.schoolforum.UserBean"/>
<jsp:setProperty property="*" name="user"/>
<%
	if(user.getUsername() == null){    
		out.println("<script type='text/javascript'>alert('您还没有登录，请先登录');window.location.href='login.jsp'; </script>");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>天津大学仁爱学院BBS论坛</title>

    <!--Loading CSS-->
    <link href="dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="dist/css/flat-ui.css" rel="stylesheet">
    <link href="dist/css/bootstrapValidator.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
    <!--Loading JS-->   
    <script src="dist/js/vendor/jquery.min.js"></script>
    <script src="dist/js/flat-ui.min.js"></script>
    <script src="dist/js/application.js"></script>
</head>


<frameset rows="295px,*,81px">

    <frame noresize="noresize" src="header.jsp" frameborder="0">
    <frameset cols="15%,*" style="border:none;">
        <frame noresize="noresize" src="nav.html" frameborder="0" style="background-color:#ecf0f1">
        <frame noresize="noresize" src="first.html" frameborder="0" name="main">
    </frameset>
    <frame noresize="noresize" src="footer.html"  frameborder="0">
    
</frameset>
</html>