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

<body bgcolor="#ADADAD">
<!-- <input type="button" class='btn btn-danger' value="注销用户" onclick="zhuxiaoUser()" style="height:30px"/> -->
	
<input type="hidden" value="${user.username}" id="ttvcts" name="ttvcts"/>

 <!-- 首页导航条 -->
	<div class="navbar-fixed-top">
		<a class="navbar-brand" href="#">网才招聘</a>
		<div class="navbar-inner">
			<div class="container">
				<ul class="nav btn-navbar">
					<li class="active divider-vertical btn-navbar" style="float: left"
						><a href="advertising.jsp" onclick="shouye()" target="3"> <font color="#46A3FF">首页</font></a></li>

					<li class="divider-vertical btn-navbar" style="float: left"
						onclick="usrlogin()"><a href="login1.jsp" target="3"> <font color="#46A3FF">个人登陆</font></a></li>


					<li class="divider-vertical btn-navbar" style="float: left"
						onclick="comlogin()"><a href="companyzhuce.jsp" target="3">
							<font color="#46A3FF">企业注册</font>
					</a></li>
					<li class="divider-vertical btn-navbar" style="float: left"
						onclick="comlogin()"><a href="companylogin.jsp" target="3">
							<font color="#46A3FF">企业登陆</font>
					</a></li>
					<!-- 导航条下拉框分类 -->
					<ul class="nav" style="float:left">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <font color="#46A3FF">个人中心</font> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" onclick="gerzx()" >个人中心</a></li>
								<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" onclick="zhuxiaoyhu()">退出登录</a></li>
							</ul></li>
					</ul>
					<br>
					
					<!-- 分割线-------------------------------------------------------------- -->
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- 首页内容 -->

	<iframe allowtransparency="true" src="advertising.jsp" frameborder="0" width="100%" height="800px" name="3"></iframe>
	<script type="text/javascript">
	</script>
</body>
<script type="text/javascript">

function shouye(){
	location.reload();
}
<%-- 
		个人中心跳页面	 展示停止运行
 function gerzx(){
	var ui = $("#ttvcts").val()
	if(ui != null && ui != ""){
		location.href="<%=request.getContextPath()%>/resumelist.jsp"
	}else{
		alert("请您先登录!!!")
	}
} --%>
 function zhuxiaoyhu(){
	$.ajax({
			url:"<%=request.getContextPath()%>/ggController/qingkongsesson.do",
			success:function(){
				location.href="<%=request.getContextPath()%>/index.jsp"
			},
			error:function(){
			}				
		})
}

		
</script>
</html>