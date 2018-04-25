<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-3.2.1.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Bootstrap Login Form Template</title>
</head>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="bootstrap-login-forms/form-2/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-2/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="bootstrap-login-forms/form-2/assets/css/form-elements.css">
        <link rel="stylesheet" href="bootstrap-login-forms/form-2/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="bootstrap-login-forms/form-2/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap-login-forms/form-2/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap-login-forms/form-2/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap-login-forms/form-2/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="bootstrap-login-forms/form-2/assets/ico/apple-touch-icon-57-precomposed.png">

<body style="background: url('<%=request.getContextPath()%>/bootstrap-login-forms/form-2/assets/img/backgrounds/2@2x.jpg');">


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
                        			<h3>注册账户</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form class="login-form" id="addformzhuche">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" placeholder="注册账号输入.." class="form-username form-control" id="loginname" name="loginname" onblur="cctvt()">
			                        		<span id="spantt1"></span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password"  placeholder="密码设置.." class="form-password form-control" id="password"  name="password" onblur="cctvmm()">
			                      			<span id="spantt3"></span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" placeholder="密码验证.." class="form-password form-control" id="mima" onblur="cctvyzpas()">
			                        		<span id="spantt4"></span>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">text</label>
			                        	<input type="text"  placeholder="真实姓名.." class="form-password form-control" id="username" name="username" onblur="cctvxm()">
			                        		<span id="spantt2"></span>
			                        		
			                        </div>
			                        
			                        <div class="form-group">
			                        	<select id="questionone" class="easyui-combobox" name="questionone" style="width:250px;height: 40px">   
											    <option value="aa">后台查</option>   
											</select>  
											<input type="text" placeholder="问题答案.." style="width:250px;height: 40px" id="answerone" name="answerone" onblur="cctvwt1()">
			                        		<span id="spantt6"></span>
			                        </div>
			                        <div class="form-group">
			                        	<select id="questiontwo" class="easyui-combobox" name="questiontwo" style="width:250px;height: 40px">   
											    <option value="aa">后台查</option>
											</select>  
											<input type="text" placeholder="问题答案.." style="width:250px;height: 40px" id="answertwo" name="answertwo" onblur="cctvwt2()">
			                        		<span id="spantt7"></span>
			                        </div>
			                         <div class="form-group">
									     <input type="text" class="form-password form-control" id="phone" name="phone" placeholder="请输入手机号">  
									     <button  type="button" class="form-password form-control" id="anniu" onclick="fasongyz()">发送验证码</button>
										 <button  type="button" class="btn btn-default" id="anniu" >(<strong class="a">60</strong>秒 )</button>
									  </div>
									  <div class="form-group">
									     <input type="text" class="form-control" name="yzm" id="yzm"  placeholder="请输入收到的验证码" onblur="cctvyzm()">
											<span id="spantt5"></span>
									  </div>
									<div class="warp"></div>
			                    </form>
			                    <center>
			                        <button type="button" onclick="zhuche()" class="btn" style="width: 400px">注册用户!</button>
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
        <script src="bootstrap-login-forms/form-2/assets/js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap-login-forms/form-2/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap-login-forms/form-2/assets/js/jquery.backstretch.min.js"></script>
        <script src="bootstrap-login-forms/form-2/assets/js/scripts.js"></script>

    </body>
<script type="text/javascript">

function zhuche(){
	alert("注册")
		var usert = $("#loginname").val();//账号
		var password = $("#password").val();//密码
		var mima = $("#mima").val();
		var xingming = $("#username").val();//正式姓名
		
		var answerone = $("#answerone").val();
		var answertwo = $("#answertwo").val();
		var yzm = $("#yzm").val();

		if(usert == null || usert == ""){
			$("#spantt1").html("注册账号不可为空!");
			return false;
		};
		if(password == null || password == ""){
			$("#spantt3").html("注册密码不可为空!");
			return false;
		};
		if(xingming == null || xingming == ""){
			$("#spantt2").html("姓名不可为空!");
			return false;
		};
		if(mima == null || mima == "" || mima != password){
			$("#spantt4").html("验证密码不正确!");
			return false;
		};
		if(yzm == null || yzm == ""){
			$("#spantt5").html("验证码不可为空!");
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
		
		//注册页
		var stt = $("#ccode").val();
			$.ajax({
				url:"<%=request.getContextPath()%>/userController/saveuserinfo.do",
				type:"post",
				data:$("#addformzhuche").serialize(),
				dataType:"json",
				async:false,
				success:function (result){
					if(result == "1"){
						alert("验证码超时!")
					}
					if(result == "3"){
						alert("用户已存在!")
					}
					if(result == "4"){
						alert("对不起错误!")
					}
					if(result == "2"){
						location.href="<%=request.getContextPath()%>/login1.jsp"
					}
				},
				error:function(){
					alert("注册出错！！！")
				}				
			})
}
			function cctvt(){
				var usert = $("#loginname").val();
				if(usert != null || usert != ""){
					$("#spantt1").html("");
				};
			}
			function cctvxm(){
				var xingming = $("#username").val();
				if(xingming != null || xingming != ""){
					$("#spantt2").html("");
				};
			}
			function cctvmm(){
				var password = $("#password").val();
				if(password != null || password != ""){
					$("#spantt3").html("");
				};
			}
			function cctvyzpas(){
				var mima = $("#mima").val();
				if(mima != null || mima != ""){
					$("#spantt4").html("");
				};
			}
			function cctvwt1(){
				var answerone = $("#answerone").val();
				if(answerone != null || answerone != ""){
					$("#spantt5").html("");
				};
			}
			function cctvwt2(){
				var answertwo = $("#answertwo").val();
				if(answertwo != null || answertwo != ""){
					$("#spantt6").html("");
				};
			}
			function cctvyzm(){
				var checkcode = $("#yzm").val();
				if(checkcode != null || checkcode != ""){
					$("#spantt7").html("");
				};
			}
			
			function fasongyz(){
				//短信
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
					url:"<%=request.getContextPath()%>/userController/getyanzhengma.do",
					type:"post",
					data:{"phone":phone},
					dataType:"json",
					async:false,
					success:function(returns){
					},
					error:function(){
						alert("请联系管理员！！！")
					}				
				})
			}				
	}
			 $.ajax({
					url:"<%=request.getContextPath()%>/userController/selectTxlk.do",
					type:"post",
					dataType:"json",
					async:false,
					success:function(returntt){
					
						var aa=eval("("+returntt+")")
						var vcv = "<option value= null >--请选择--</option>"

						for (var i = 0; i < aa.length; i++) {
							vcv += "<option value='"+aa[i].qid+"'>"+aa[i].qtext+"</option>"
						}
						
						$("[name = 'questionone']").html(vcv);
						$("[name = 'questiontwo']").html(vcv);
					},
					error:function(){
						alert("后台456")
					}
				})
			/* var vcv = "<option value= null >--请选择--</option>"
					$.each(returntt,function(){
						vcv += "<option value='"+this[0].qid+"'>"+this[0].qtext+"</option>"
						alert(this[0].QID)
					})
						$("[name = 'questionone']").html(vcv);
						$("[name = 'questiontwo']").html(vcv);
	 */
</script>

</html>