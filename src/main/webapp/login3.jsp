<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

 <title>Bootstrap Login Form Template</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="bootstrap-login-forms/form-3/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-3/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="bootstrap-login-forms/form-3/assets/css/form-elements.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-3/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-login-forms/form-3/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-login-forms/form-3/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-login-forms/form-3/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="bootstrap-login-forms/form-3/assets/ico/apple-touch-icon-57-precomposed.png">

<body style="background: url('<%=request.getContextPath()%>/bootstrap-login-forms/form-2/assets/img/backgrounds/3@2x.jpg');">
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
                        			<h3>重 置 密 码</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="mimacongzhi" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="loginname" placeholder="请输入要找回的账号.." class="form-username form-control" id="loginname" onblur="zhanghao()">
			                        	<span id="spantt1"></span>
			                        </div>
			                        
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">password</label>
			                        	<input type="password" name="password" placeholder="请输入要更改的密码.." class="form-username form-control" id="password" onblur="mimaaa()">
			                       			<span id="spantt3"></span>
			                        </div>
			                      
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">password</label>
			                        	<input type="password" name="queren" placeholder="请确认要更改的密码.." class="form-username form-control" id="queren" onblur="mimaquer()">
			                        	<span id="spantt4"></span>
			                        </div>
			                        
			                         <div class="form-group">
			                        		
			                       			<input type="text" placeholder="请稍后.." style="width:250px;height: 40px" id="spanttquestionone" name="spanttquestionone" readonly="readonly">
											<input type="text" placeholder="问题答案.." style="width:250px;height: 40px" id="answerone" name="answerone" onblur="daan1()">
			                       			<span id="spantt6"></span>
			                        </div>
			                        
			                        <div class="form-group">
			                       			<input type="text" placeholder="请稍后.." style="width:250px;height: 40px" id="spanttanswertwo" name="spanttanswertwo" readonly="readonly">
											<input type="text" placeholder="问题答案.." style="width:250px;height: 40px" id="answertwo" name="answertwo" onblur="daan2()">
			                        		<span id="spantt7"></span>
			                        </div>
			                      
			                        <div class="form-group">
										<input type="text" class="form-control" id="phone" name="phone" placeholder="请输入手机号"> 
										 <button  type="button" class="btn btn-default" id="anniu" onclick="fasongyzm()">发送验证码</button>
										<button  type="button" class="btn btn-default" id="anniu" >(<strong class="a">60</strong>秒 )</button>
									</div>
									<div class="form-group">
									     <input type="text" class="form-control" name="yzm"  id="yzm" placeholder="请输入收到的验证码" onblur="yzmyz()"></div>
									     <span id="spantt5"></span>
									      <div class="warp"></div>
			                    </form>
			                    <center>
			                        <button type="button" onclick="zhuche()" class="btn" style="width: 500px">重 置  密 码!</button>
			                    </center>
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
        <script src="bootstrap-login-forms/form-3/assets/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap-login-forms/form-3/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap-login-forms/form-3/assets/js/jquery.backstretch.min.js"></script>
        <script src="bootstrap-login-forms/form-3/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>
    
    
    <script type="text/javascript">
    	
    function zhuche(){
    		var usert = $("#loginname").val();//账号
    		var password = $("#password").val();//密码
    		var mima = $("#queren").val();

    		var answerone = $("#answerone").val();
    		var answertwo = $("#answertwo").val();
    		var yzm = $("#yzm").val();

    		if(usert == null || usert == ""){
    			$("#spantt1").html("账号不可为空!");
    			return false;
    		};
    		if(password == null || password == ""){
    			$("#spantt3").html("重置密码不可为空!");
    			return false;
    		};
    		if(mima == null || mima == "" || mima != password){
    			$("#spantt4").html("验证密码不正确!");
    			return false;
    		};
    		
    		if(answerone == null || answerone == ""){
    			$("#spantt6").html("密码问题不可为空!");
    			return false;
    		};
    		if(answertwo == null || answertwo == ""){
    			$("#spantt7").html("密码问题不可为空!");
    			return false;
    		};
    		if(yzm == null || yzm == ""){
    			$("#spantt5").html("验证码不可为空!");
    			return false;
    		};
    		
    		//重置页
    		var stt = $("#ccode").val();
    			$.ajax({
    				url:"<%=request.getContextPath()%>/userController/xiugaizhanghao.do",
    				type:"post",
    				data:$("#mimacongzhi").serialize(),
    				dataType:"json",
    				async:false,
    				success:function (result){
    					if(result == 1){
    						alert("验证码超时..");
    					}
    					if(result == 2){
    						location.href="<%=request.getContextPath()%>/login1.jsp"
    					}
    					if(result == 3){
    						alert("对不起错误..");
    					}
    				},
    				error:function(){
    					alert("重置出错！！！")
    				}				
    			})
    }
    			function zhanghao(){
    				var usert = $("#loginname").val();
    				if(usert != null || usert != ""){
    					$("#spantt1").html("");
    					
    					 $.ajax({
    	    					url:"<%=request.getContextPath()%>/userController/selectuserWenti1.do",
    	    					type:"post",
    	    					data:{"loginname":usert},
    	    					dataType:"json",
    	    					async:false,
    	    					success:function(returntt){
		    	    				$("#spanttquestionone").val(returntt);
    	    					},
    	    					error:function(){
    	    						alert("后台456")
    	    					}
    	    				})
    	    				
    					 $.ajax({
    	    					url:"<%=request.getContextPath()%>/userController/selectuserWenti2.do",
    	    					type:"post",
    	    					data:{"loginname":usert},
    	    					dataType:"json",
    	    					async:false,
    	    					success:function(returntt){
		    	    				$("#spanttanswertwo").val(returntt);
    	    					},
    	    					error:function(){
    	    						alert("后台456")
    	    					}
    	    				})
    				};
    			}
    			function mimaaa(){
    				var password = $("#password").val();
    				if(password != null || password != ""){
    					$("#spantt3").html("");
    				};
    			}
    			function mimaquer(){
    				var mima = $("#queren").val();
    				if(password != null || password != ""){
    					$("#spantt4").html("");
    				};
    			}
    			function daan1(){
    				var answerone = $("#answerone").val();
    	    		
    				if(answerone != null || answerone != ""){
    					$("#spantt6").html("");
    				};
    			}
    			function daan2(){
    				var answertwo = $("#answertwo").val();
    				if(answertwo != null || answertwo != ""){
    					$("#spantt7").html("");
    				};
    			}
    			function yzmyz(){
    				var yzm = $("#yzm").val();
    				if(yzm != null || yzm != ""){
    					$("#spantt5").html("");
    				};
    			}
	    		
    			
    			function fasongyzm(){
    				//短信
    				var usert = $("#loginname").val();//账号
    				if(usert == null || usert == ""){
    	    			$("#spantt1").html("账号不可为空!");
    	    			return false;
    	    		};
    				
    				var phone=$("#phone").val();
    				if(phone==null||phone==""||phone.length != 11){
    					alert("请输入合法号码")
    				}else{
    					$("#anniu").prop("disabled",true);
    					$("#anniu").html("再次发送")
    					$(document).ready(function() {
    						var times = 60 * 100; // 60秒
    						countTime = setInterval(function() {
    							times = --times < 0 ? 0 : times;
    							var ms = Math.floor(times / 100).toString();
    			
    							if(ms.length <= 1) {
    								ms = "0" + ms;
    							}
    							var hm = Math.floor(times % 100).toString();
    							if(hm.length <= 1) {
    								hm = "0" + hm;
    							}
    							if(times == 0) {
    								$("#anniu").removeAttr("disabled");
    								clearInterval(countTime);
    							}
    							// 获取分钟、毫秒数
    							$(".a").html(ms);
    							$(".b").html(hm);
    						}, 10);
    					});
    					
    				$.ajax({
    					url:"<%=request.getContextPath()%>/userController/sjiyanzheng.do",//手机验证
    					type:"post",
    					data:$("#mimacongzhi").serialize(),
    					dataType:"json",
    					async:false,
    					success:function(returns){
    						if(returns == 1){
    							alert("请稍后.....")
    						}
    						if(returns == 2){
    							alert("对不起账号与本手机号不匹配!")
    						}
    					},
    					error:function(){
    						
    					}				
    				})
    			}				
    	}
 
    </script>
</html>