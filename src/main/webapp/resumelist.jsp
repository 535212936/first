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

<style>
   	.login-dialog .modal-dialog {
                width: 1000px;
            }
</style>
<body>

<input type="hidden" value="${user.username}" id="ttvct" name="ttvct"/>
<div class="row clearfix">
 	<div class="col-xs-2 text-center" id="tree">
		<a href="javascript:void(0);" class="list-group-item active" onclick="shuxing()">个人主页</a>
		<a href="javascript:void(0);" class="list-group-item"  onclick="addTabs2('selectresume.jsp')">我的简历</a>
		<a href="javascript:void(0);" class="list-group-item"  onclick="addTabs1('addresume.jsp')">新增简历</a>
		<a href="javascript:void(0);" class="list-group-item" onclick="addTabs3('selectjob.jsp')">求职入口</a>
	</div>
	<div class="col-xs-10">

				<iframe allowtransparency="true" frameborder="0" width="410" height="98" scrolling="no" src="//tianqi.2345.com/plugin/widget/index.htm?s=1&z=1&t=1&v=0&d=2&bd=0&k=&f=&ltf=009944&htf=cc0000&q=1&e=1&a=1&c=54511&w=410&h=98&align=center"></iframe>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;																											<font size="5">欢迎   <span id="spantt"></span>  登录人才招聘官网</font>&nbsp;&nbsp;<input type="button" class='btn btn-danger' value="切换用户登录" onclick="zhuxiaoUser()"/>

				<ul id="myTab" class="nav nav-tabs"></ul>
    <div class="tab-content">
    <span id="tablrew">
    		
					找工作          &nbsp; &nbsp;上网才招聘 <small>热门行业展</small>
			
    <table id="reduTable"></table></span></div>	
</div>
</div>



<script type="text/javascript">

var yy = 0;
function addTabs1(urlStr){
	var pp = yy++
	if(pp < 1){
		 $("#tablrew").html(" ")
			$.ajax({
				url:"<%=request.getContextPath()%>/"+urlStr,
				success:function(info){	
					$.addtabs.add({
						
		                title:"新增简历",
		                content:info,
		               
		        	})
				}			
			})		
	}
}

var uu = 0;
function addTabs2(urlStr){
	var ii = uu++
	if(ii < 1){
		 $("#tablrew").html(" ")
			$.ajax({
				url:"<%=request.getContextPath()%>/"+urlStr,
				success:function(info){	
					$.addtabs.add({
						
		                title:"查看简历",
		                content:info,
		        	})
				}		
			})	
	}
}

var e = 0;
function addTabs3(urlStr){
	var ee = e++
	if(ee < 1){
		 $("#tablrew").html(" ")
			$.ajax({
				url:"<%=request.getContextPath()%>/"+urlStr,
				success:function(info){	
					$.addtabs.add({
						
		                title:"查询职位",
		                content:info,
		        	})
				}		
			})		
	}
}

$(function(){
	var tt = $("#ttvct").val();
	var pp = tt.substring(0,1);
	$("#spantt").html(pp+"先生");
})



$(function(){
	
	 $("#reduTable").bootstrapTable({
    	 url:"<%=request.getContextPath()%>/resumecontroller/selectRedu.do",
		 striped:true,//斑马线
		 search:true,//自带查询框
		 showHeader:true,//显示标头
		 showRefresh:true,//刷新
		 showPaginationSwitch:true,
    	 paginationVAlign:"bottom",//设置上下页未知'top','bottom'
    	 paginationHAlign:"left", 
    	 pagination: true,	//开启分页
    	 pageNumber:1,//初始化加载第几页
    	 pageSize: 4,//默认每页条数
    	 pageList: [2, 4, 6, 8], 
    	 contentType:"application/x-www-form-urlencoded;charset=UTF-8",
    	
    	/*  queryParams:function(params){
     		 console.info(params);
     		 params.userName = $("#username").val();
     		 params.startTime  = $("#starttime").val();
     		 params.endTime = $("#endtime").val();  //条件查询
 			 return params;
 		  }, */

        
   		 columns: [{
		        field: 'jname',
		        title: '☎招聘职位'
		    }, {
		        field: 'jyaoqiu',
		        title: '☬职位的要求'
		    },{
		        field: 'jpnum',
		        title: '☸招聘人数'
		    }, {
		        field: 'jzhizhe',
		        title: '☣主要职责'
	
		    }, {
		        field: 'jaddress',
		        title: '✈工作地点'
	
		    },{
		        field: 'jhot',
		        title: '☢热度排行榜'
		    },{
		        field: '',
		        title: '➹操作',
		        formatter:function(value,row,index){
		        	//alert(row.resumeid)
	   		    		
		        	var anniu="<input type='button'class='btn btn-success' value='❃查看详情❃' onclick='chakanxingxi(\""+row.jname+"\")'>";
		        	
	   		    	 return anniu;
	   		     }
		    }]
     })
	
})
   
function chakanxingxi(jname){
	
	window.location.href="http://zhaopin.baidu.com/quanzhi?tid=4139&ie=utf8&oe=utf8&query="+jname+"&city_sug=北京";
}
	
/**
 * 刷新当前页面
 */
 function shuxing(){
		location.reload();
	}
/**
 * 注销
 */
 function zhuxiaoUser(){
	location.href="<%=request.getContextPath()%>/login1.jsp"
}

</script>

</body>

</html>