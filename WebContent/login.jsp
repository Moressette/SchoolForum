<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script type="text/javascript">
    <%String title = "用户名错误";%>
    <%String container = "用户名不能为空";%>
		function validate(registerform) {
			if (registerform.username.value != "<%=user.getUsername()%>") {
				document.getElementById("myModalTitle").innerHTML = "登录失败";
				document.getElementById("myModalContainer").innerHTML = "用户名错误";
                $("#myModal").modal();
				return false;
			}
			if (registerform.password.value != "<%=user.getPassword()%>") {
				document.getElementById("myModalTitle").innerHTML = "登录失败";
				document.getElementById("myModalContainer").innerHTML = "密码错误";
				$("#myModal").modal();
				return false;
			}      
			return true;
		}
	</script>
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
            <font style="color:#ffffff;font-size:50px;font-family:微软雅黑">用户登录</font>
        </div>
    </div>
    <!--TITLE END-->

    <!--Login Form-->
    <div class="loginControl">
        <form name="loginform" action="home.jsp" method="post" role="form" onsubmit="return validate(this);">
            <div class="login-form">
                <!--Username-->
                <div class="form-group">
                    <input type="text" class="form-control login-field" placeholder="用户名" name="username" id="username" />
                    <label class="login-field-icon fui-user" for="username"></label>
                </div>
                <!--Username END-->

                <!--Password-->
                <div class="form-group">
                    <input type="password" class="form-control login-field" placeholder="密码" name="password" id="password" />
                    <label class="login-field-icon fui-lock" for="password"></label>
                </div>
                <!--Password END-->
                
                <!-- Login button -->
                <button type="submit" class="btn btn-primary btn-lg btn-block">
                                    登录
                </button>
                <!-- Login button END -->
                <a class="login-link" href="register.jsp">还没有账号?点击注册</a>
            </div>
        </form>
    </div>
	<!-- Login form END -->
	
    <!--Footer-->
    <div class="footer">
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
    
    
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalTitle" style="font-family:微软雅黑"></h4>
          </div>
          <div class="modal-body" style="font-family:微软雅黑">
          	<span id="myModalContainer"></span>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
          </div>
        </div>
      </div>
    </div>
    
    <!--Loading JS-->

    
    <script src="dist/js/vendor/jquery.min.js"></script>
    <script src="dist/js/flat-ui.min.js"></script>
    <script src="dist/js/application.js"></script>
    
    </body>
</html>