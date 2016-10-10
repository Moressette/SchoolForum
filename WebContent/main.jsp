<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8"); 
  response.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" scope="session" class="com.moressette.schoolforum.UserBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String sex = "";
	String edu = "";
	//Converse sex
	if(user.getSex() == 'm')
	{
		sex = "男";
	}else{
		sex = "女";
	}
	//Converse education
	if(user.getEducation() == "GaoZhong"){
		edu = "高中";
	}else if(user.getEducation() == "DaZhuan"){
		edu = "大专";
	}else if(user.getEducation() == "Benke"){
		edu = "本科";
	}else if(user.getEducation() == "ShuoShi"){
		edu = "硕士";
	}else{
		edu = "博士";
	}
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>天津大学仁爱学院BBS论坛</title>

    <!--Loading CSS-->
    <link href="dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="dist/css/flat-ui.css" rel="stylesheet">
    <link href="dist/css/bootstrapValidator.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">
</head>

<body style="overflow-x: hidden;">
    <h2 style="margin-left:20px">个人信息</h2>
   	<div class="row">
   		<div class="col-md-9">
   			<div class="share mrl" style="width:500px;margin-left:20px">
			    <ul>
			      <li>
			        <label class="share-label infoControl">用户账号</label>
			        <label class="share-label infoControl" style="font-weight:300"><%=user.getUsername() %></label>
			      </li>
			      <li>
			        <label class="share-label infoControl">用户密码</label>
			        <label class="share-label infoControl" style="font-weight:300"><%=user.getPassword() %></label>
			      </li>
			      <li>
			        <label class="share-label infoControl">真实姓名</label>
			        <label class="share-label infoControl" style="font-weight:300"><%=user.getRealname() %></label>
			      </li>
			      <li>
			        <label class="share-label infoControl">用户性别</label>
			        <label class="share-label infoControl" style="font-weight:300"><%=sex %></label>
			      </li>
			      <li>
			        <label class="share-label infoControl">教育程度</label>
			        <label class="share-label infoControl" style="font-weight:300"><%=edu %></label>
			      </li>
			      <li>
			        <label class="share-label infoControl">个人爱好</label>
			        <div class="tagsinput-primary" style="margin-top:10px;">
			            <%
			            	for(String hobby:user.getHobby()){
			            		out.print("<label class='tag label label-info' style='font-size:18px;font-family:微软雅黑';font-weight:300;>");
			            		out.println(hobby);
			            		out.println("</label>&nbsp;");
			            	} 
			            %>
		            </div>
			      </li>
			      <li>
			        <label class="share-label infoControl">自我介绍</label>
			        <label class="share-label infoControl" style="width:350px;font-weight:300;"><%=user.getSelf_introduce() %></label>
			      </li>
			    </ul>
			    <a href="first.html" class="btn btn-primary btn-block btn-large">返回</a>
		    </div>
   		</div>
   		
   		<div class="col-md-2">
               <div class="tile" style="margin-top:30px;height:318px">
               <img src="img/ribbon.svg" alt="ribbon" class="tile-hot-ribbon">
               <img src="img/Book.png" alt="Chat" class="tile-image">
               <h3 class="tile-title">教务网</h3>
               <p>天津大学仁爱学院教务管理系统</p>
               <a class="btn btn-primary btn-large btn-block" href="http://jw.tjrac.edu.cn/" target="_blank">前往</a>
             </div>
           </div>
   	</div>
    
    <!--Loading JS-->
    <script src="dist/js/vendor/jquery.min.js"></script>
    <script src="dist/js/flat-ui.min.js"></script>
    <script src="dist/js/application.js"></script>
    <!-- Custom JS -->
    <script>
		var states = new Bloodhound({
        datumTokenizer: function(d) { return Bloodhound.tokenizers.whitespace(d.word); },
        queryTokenizer: Bloodhound.tokenizers.whitespace,
        limit: 4,
        local: [
          { word: "Alabama" },
          { word: "Alaska" },
          { word: "Arizona" },
          { word: "Arkansas" },
          { word: "California" },
          { word: "Colorado" }
        ]
      });
      $('input.tagsinput').tagsinput();
    </script>
</body>
</html>