<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			if (registerform.username.value == "") {
				document.getElementById("myModalTitle").innerHTML = "用户名错误";
				document.getElementById("myModalContainer").innerHTML = "用户名不能为空";
                $("#myModal").modal();
				return false;
			}
			if (registerform.password.value == "") {
				document.getElementById("myModalTitle").innerHTML = "密码错误";
				document.getElementById("myModalContainer").innerHTML = "密码不能为空";
				$("#myModal").modal();
				return false;
			}
            if(registerform.password.value.length<8 || registerform.password.value.length>20){
            	document.getElementById("myModalTitle").innerHTML = "密码错误";
				document.getElementById("myModalContainer").innerHTML = "密码必须在8-20位之间";
				$("#myModal").modal();
                return false;
            }
			if (registerform.password.value != registerform.confirm_pwd.value ){
				document.getElementById("myModalTitle").innerHTML = "密码错误";
				document.getElementById("myModalContainer").innerHTML = "两次密码输入不一致";
				$("#myModal").modal();
				return false;
			}
            if (registerform.realname.value == "") {
            	document.getElementById("myModalTitle").innerHTML = "姓名错误";
				document.getElementById("myModalContainer").innerHTML = "真实姓名不能为空";
				$("#myModal").modal();
				return false;
			}
            if((!document.getElementsByName("sex")[0].checked)&&(!document.getElementsByName("sex")[1].checked)){
            	document.getElementById("myModalTitle").innerHTML = "性别错误";
				document.getElementById("myModalContainer").innerHTML = "请选择性别";
				$("#myModal").modal();
                return false;
            }
            if(document.getElementById("education").value=="none") {
            	document.getElementById("myModalTitle").innerHTML = "教育程度错误";
				document.getElementById("myModalContainer").innerHTML = "请选择教育程度";
				$("#myModal").modal();
				return false;
            }
            
            var names = document.getElementsByName("hobby");            
            var sflag = false ;         
            for(var i=0;i<names.length;i++){  
                if(names[i].checked){  
                        sflag = true ;  
                        break ;  
                }
            }
            if(sflag == false){
            	document.getElementById("myModalTitle").innerHTML = "兴趣爱好错误";
				document.getElementById("myModalContainer").innerHTML = "请至少选择一个兴趣爱好";
				$("#myModal").modal();
                return false;
            }
            
            else if (registerform.self_introduce.value == "") {
            	document.getElementById("myModalTitle").innerHTML = "自我介绍错误";
				document.getElementById("myModalContainer").innerHTML = "自我介绍不能为空";
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
            <font style="color:#ffffff;font-size:50px;font-family:微软雅黑">新用户注册</font>
        </div>
    </div>
    <!--TITLE END-->

    <!--Register Form-->
    <div class="loginControl">
        <form name="registerform" action="success.jsp" method="post" role="form" onsubmit="return validate(this);">
            <div class="login-form">
                <!--Username-->
                <div class="form-group">
                    <input type="text" class="form-control login-field" placeholder="用户名(不能为空)" name="username" id="username" />
                    <label class="login-field-icon fui-user" for="username"></label>
                </div>
                <!--Username END-->

                <!--Password-->
                <div class="form-group">
                    <input type="password" class="form-control login-field" placeholder="密码(长度在8~12之间)" name="password" id="password" />
                    <label class="login-field-icon fui-lock" for="password"></label>
                </div>
                <!--Password END-->

                <!--Confirm pwd-->
                <div class="form-group">
                    <input type="password" class="form-control login-field" placeholder="确认密码(必须与密码一致)" name="confirm_pwd" id="confirm_pwd" />
                    <label class="login-field-icon fui-lock" for="confirm_pwd"></label>
                </div>
                <!--Confirm pwd END-->

                <!--Realname-->
                <div class="form-group">
                    <input type="text" class="form-control login-field" placeholder="真实姓名(不能为空)" name="realname" id="realname" />
                    <label class="login-field-icon fui-new" for="realname"></label>
                </div>
                <!--Realname END-->

                <!--Block Group Strat-->
                <div class="form-group">
                    <div class="row">
                        <!--sex-->
                        <div class="col-md-2">
                            <div class="thumbnail">
                                <font class="formFontStyle">性别</font>
                                <label class="radio" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;margin-top:12px">
                                    <input type="radio" name="sex" id="sex" value="male" class="custom-radio">
                                    <span class="icons">
                                    <span class="icon-unchecked"></span>
                                    <span class="icon-checked"></span>
                                    </span>
                                    男
                                </label>

                                <label class="radio" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500">
                                    <input type="radio" name="sex" id="sex" value="female" class="custom-radio">
                                    <span class="icons">
                                    <span class="icon-unchecked"></span>
                                    <span class="icon-checked"></span>
                                    </span>
                                    女
                                </label>
                            </div>
                        </div>
                        <!--sex END-->
                        
                        <!--Edu-->
                        <div class="col-md-5">
                            <div class="thumbnail">
                                <font class="formFontStyle">教育程度</font>
                                <div class="form-group" style="margin-top:13px">
                                    <select data-toggle="select" class="form-control select select-primary select-lg select2-offscreen" tabindex="-1" title="" name="education" id="education">
                                        <option value="none" selected="selected">--请选择教育程度--</option>
                                        <option value="GaoZhong">高中</option>
                                        <option value="DaZhuan">大专</option>
                                        <option value="BenKe">本科</option>
                                        <option value="ShuoShi">硕士</option>
                                        <option value="Boshi">博士</option>
                                    </select>
                                </div>
                            </div>
                        </div>                      
                        <!--Edu END-->
                        
                        <!--Hobbies-->
                        <div class="col-md-5">
                            <div class="thumbnail">
                                <font class="formFontStyle">兴趣爱好</font><br>
                                <label class="checkbox" for="travel" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;display:inline-block;padding-left:25px;margin-right:28px">
                                    <input type="checkbox"  name="hobby" data-toggle="checkbox" value="旅游" id="travel">
                                    旅游
                                </label>
                                <label class="checkbox" for="music" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;display:inline-block;padding-left:25px;margin-right:28px">
                                    <input type="checkbox"  name="hobby" data-toggle="checkbox" value="音乐" id="music">
                                    音乐
                                </label>
                                <label class="checkbox" for="sport" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;display:inline-block;padding-left:25px">
                                    <input type="checkbox"  name="hobby" data-toggle="checkbox" value="运动" id="sport">
                                    运动
                                </label>
                                <label class="checkbox" for="read" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;display:inline-block;padding-left:25px;margin-right:28px;margin-bottom:1px;">
                                    <input type="checkbox"  name="hobby" data-toggle="checkbox" value="阅读" id="read">
                                    阅读
                                </label>
                                <label class="checkbox" for="game" style="color:#2f4154;font-family:微软雅黑;font-size:14px;font-weight:500;display:inline-block;padding-left:25px;margin-right:28px;margin-bottom:1px;">
                                    <input type="checkbox"  name="hobby" data-toggle="checkbox" value="游戏" id="game">
                                    游戏
                                </label>
                            </div>
                        </div>   
                        <!--Hobbies END-->
                    </div>
                </div>
                <!--Block Group END-->
                
                <!--Self introduce-->
                <div class="form-group">
                    <textarea type="text" class="form-control login-field" name="self_introduce" id="self_introduce" placeholder="自我介绍"></textarea>
                </div>
                <!--Self introduce END-->
                
                <!--submit botton with modal-->
                <button type="submit" class="btn btn-primary btn-lg btn-block">
                    注册
                </button>
                <!--Submit button END-->
                <a class="login-link" href="login.jsp">已经有账号?点此登录</a>
            </div>
        </form>
    </div>
    <!--Register Form END-->

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