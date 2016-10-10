<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8"); 
  response.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" scope="session" class="com.moressette.schoolforum.UserBean"/>
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
</head>

<%
	Locale locale=request.getLocale();
	Calendar calendar=Calendar.getInstance(locale);
	int hour=calendar.get(Calendar.HOUR_OF_DAY);
	String greeting="";
	if(hour<=4){
	 greeting="晚上好，";
	}else if(hour<=9){
	 greeting="早上好，";
	}else if(hour<=12){
	 greeting="上午好，";
	}else if(hour<=18){
	 greeting="下午好，";
	}else if(hour<=24){
	 greeting="晚上好，";
	}
 %>
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
        <div class="container" style="margin-left:0px;">
            <font style="color:#ffffff;font-size:50px;font-family:微软雅黑"><%=greeting %><%=user.getRealname() %></font>
        </div>
    </div>
    <!--TITLE END-->
    <!--Loading JS-->   
    <script src="dist/js/vendor/jquery.min.js"></script>
    <script src="dist/js/flat-ui.min.js"></script>
    <script src="dist/js/application.js"></script>
    
    
    
</body>
</html>