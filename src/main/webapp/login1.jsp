<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<!-- jQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>

<title>Bootstrap Login Form Template</title>

<link rel="stylesheet" type="text/css" href="css/verify.css">
<!-- CSS -->

<!-- bootstrap-login-forms/form-1/assets/css/form-elements.css -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="bootstrap-login-forms/form-1/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-1/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="bootstrap-login-forms/form-1/assets/css/form-elements.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-1/assets/css/style.css">

  <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="bootstrap-login-forms/form-1/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-login-forms/form-1/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-login-forms/form-1/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-login-forms/form-1/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="bootstrap-login-forms/form-1/assets/ico/apple-touch-icon-57-precomposed.png">
        
        
</head>



<body style="background: url('<%=request.getContextPath()%>/bootstrap-login-forms/form-1/assets/img/backgrounds/1@2x.jpg');">

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Bootstrap</strong> Login Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a free responsive login form made with Bootstrap. 
	                            	Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>用户登录</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="dengluLogin" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" placeholder="用户账号..." class="form-username form-control" id="loginname" name="loginname" onblur="cctv()">
			                        		<span id="spantt11"></span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password"  placeholder="用户密码..." class="form-password form-control" id="password" name="password" onblur="vtcc()">
			                        		<span id="spantt22"></span>
			                        </div>
			                    </form>
			                      			点选验证码
									<div id="mpanel5"></div>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="qiyedenglu()">企业登录</a>
									<span id="denglu"></span>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...切换登录页:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-1 btn-link-1-facebook" href="<%=request.getContextPath()%>/login1.jsp">
	                        		<i class="fa fa-facebook"></i>用户登录
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-twitter" href="<%=request.getContextPath()%>/login2.jsp">
	                        		<i class="fa fa-twitter"></i>注册用户
	                        	</a>
	                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="<%=request.getContextPath()%>/login3.jsp">
	                        		<i class="fa fa-google-plus"></i>找回密码
	                        	</a>
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="bootstrap-login-forms/form-1/assets/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap-login-forms/form-1/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap-login-forms/form-1/assets/js/jquery.backstretch.min.js"></script>
        <script src="bootstrap-login-forms/form-1/assets/js/scripts.js"></script>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/verify.js" ></script>


<script type="text/javascript">

$('#mpanel5').pointsVerify({
	defaultNum : 6,	//默认的文字数量
	checkNum : 4,	//校对的文字数量
	vSpace : 5,	//间隔
	imgName : ['1.jpg', '2.jpg','3.jpg','4.jpg'],
	imgSize : {
		width: '500px',
		height: '200px',
	},
	barSize : {
		width : '500px',
		height : '40px',
	},
	ready : function() {
	},
	success : function() {
		$("#denglu").html("<button type='button' onclick='buttonUaert()' class='btn' style='width: 500px' >点  击  登 录  !</button>")
	},
	error : function() {

	}
});    

     

</script>
</body>
<script type="text/javascript">

function buttonUaert(){

	var usert = $("#loginname").val();
	var userspass = $("#password").val();

	if(usert == null || usert == ""){
		$("#spantt11").html("账号不可为空!");
		return false;
	};
	if(userspass == null || userspass == ""){
		$("#spantt22").html("密码不可为空!");
		return false;
	};
	//提交全部表单
	$.ajax({
		url:"<%=request.getContextPath()%>/userController/selectdenglu.do",
		type:"post",
		dataType:"json",
		data:$("#dengluLogin").serialize(),
		success:function(returntt){
			if(returntt == 1){
				alert("账号或密码错误!!!!!!")
			}
			if(returntt == 2){
				location.href="<%=request.getContextPath()%>/resumelist.jsp"
					
			}
		},
		error:function(){
			alert("后台");
		}
	});
	
}
function cctv(){
	var usert = $("#loginname").val();
	if(usert != null || usert != ""){
		$("#spantt11").html("");
	};
}
function vtcc(){
	var userspass = $("#password").val();
	if(userspass != null || userspass != ""){
		$("#spantt22").html("");
	};
}
/**
 * 跳转到企业登录
 */
function qiyedenglu(){
	window.location.href="<%=request.getContextPath()%>/companylogin.jsp";
}
</script>
</html>