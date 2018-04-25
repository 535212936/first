<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap/js/bootstrap.min.js"></script>

<!-- bootstrap.addtabs -->
<link
	href="${pageContext.request.contextPath}/jquery/bootStrap-addTabs/bootstrap.addtabs.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootStrap-addTabs/bootstrap.addtabs.js"></script>

<!-- bootstrap-treeview -->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>

<!-- new bootstrap-fileinput -->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/css/fileinput.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/js/fileinput.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput-master/js/locales/zh.js"></script>

<!-- bootstrap-table -->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/bootstrap-table.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/bootstrap-table.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>

<!-- bootstrap-datetimepicker 
<link href="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
-->

<!-- new bootstrap-datetimepicker -->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-datetimepicker-master/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

<!-- bootstrap-dialog -->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-dialog/dist/css/bootstrap-dialog.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-dialog/dist/js/bootstrap-dialog.min.js"></script>

<!-- bootstrap-select ������-->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/css/bootstrap-select.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/bootstrap-select.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i18n/defaults-zh_CN.min.js"></script>

<link
	href="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/css/bootstrapValidator.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/js/bootstrapValidator.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrapvalidator-master/dist/js/language/zh_CN.js"></script>


<link rel="stylesheet" type="text/css" href="js/css/verify.css">
<script type="text/javascript" src="js/verify.js" ></script>

<body background="9e54908b26d44b1758e1e2100c6e1dd0.jpg">

<div class="container-fluid">
<div class="row-xs" style="height: 30px"></div>
<h1>企业登录</h1>
<div>

<form id="logincompanyform">

<table >

<tr>
<td><span class="glyphicon glyphicon-earphone" style="font-size: 20px"></span></td>
<td><input type="text" class="form-control" id="jlphone" name="cphone" placeholder="phone" /></td>

</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td><span class="glyphicon glyphicon-lock" style="font-size: 20px"></span></td>
<td><input type="password" class="form-control" name="cpassword" placeholder="password" /></td>
</tr>
<tr>
<td height="150px"></td>
<td height="150px">

<div id="mpanel4" style="margin-top:50px;">
</div>

</td>
</tr>
<tr>
<td></td>
<td><label><input type="checkbox" value="1"  name="anone"><span>记住我</span></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="gerdenglu()">个人登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">找回密码</a></td>
</tr>
</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="loginit()" id="loginan" class="btn btn-success" disabled="disabled" value="登陆"/>
</form>
</div>
</div>


<script type="text/javascript">
$('#mpanel4').slideVerify({
	type : 2,		//类型
	vOffset : 5,	//误差量，根据需求自行调整
	vSpace : 5,	//间隔
	imgName : ['1.jpg', '2.jpg'],
	imgSize : {
		width: '250px',
		height: '100px',
	},
	blockSize : {
		width: '40px',
		height: '40px',
	},
	barSize : {
		width : '250px',
		height : '40px',
	},
	ready : function() {
	
	},
	success : function() {
		
		$("#loginan").removeAttr("disabled")
		
		
	},
	error : function() {
//	        	alert('验证失败！');
	}
	
})
</script>
<script type="text/javascript">
function loginit(){
	$.ajax({
		url:"<%=request.getContextPath()%>/companyController/logincompany.do",
		type:"post",
		data:$("#logincompanyform").serialize(),
		dataType:"json",
		async:false,
		success:function (result){
			if(result=="1"){
				alert("登录成功")
				location.href="<%=request.getContextPath()%>/main.jsp"
			}
			if(result=="2"){
				alert("账号或密码错误")
				location.reload();
			}
			if(result=="3"){
				alert("账号或密码错误")
				location.reload();	
			}	
		},
		error:function(){
			alert("验证码发送出错！！！")
		}				

	})	

	}
	
	
	
	
	






function gerdenglu(){
		location.href="<%=request.getContextPath()%>/login1.jsp"	
}

$(function(){
	$.ajax({
		url:"<%=request.getContextPath()%>/companyController/toselredis.do",
		type:"post",
		
		dataType:"json",
		async:false,
		success:function (result){
			$("#jlphone").val(result)
		},
		error:function(){
		
		}				

	})	
	
	
	
})


</script>




</body>
</html>