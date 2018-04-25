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




<body>




<div class="panel panel-primary">
    <div>
    	<form class="form-inline">
     		<div class="form-group">
        		<label class="sr-only" >公司名称:</label>
       			<input type="text" class="form-control" placeholder="请输入名称" id="comname" name="comname">
      		</div>
      		<!-- <div class="form-group">
        		<label class="sr-only" >注册日期:</label>
       			<input type="text" class="form-control" id="startTime" name="stratTime">
       			<input type="text" class="form-control" id="endTime" name="endTime">
      		</div> -->
    	</form>
    </div>
    <button type="button" class=" btn btn-danger dropdown-toggle glyphicon glyphicon-adjust" onclick="search_list()">搜索</button>
    
    
    <div id="tb">
	 <button type="button" class="btn btn-warning glyphicon glyphicon-plus" onclick="addguanggao()">新增</button>
	 <button type="button" class="btn btn-danger glyphicon glyphicon-remove" onclick="deleteguanggao()">删除</button>
	 <button type="button" class="btn btn-success glyphicon glyphicon-edit" onclick="updateguanggao()">修改</button>
	  
	</div>
    <table class="table" id="file-table" border="1"></table>
</div>







<script type="text/javascript">
/* $(function(){
    
	 $("#startTime").datetimepicker({
	        format: "yyyy-mm-dd hh:ii:ss",//显示格式
	        language: 'zh-CN',//显示中文
	        autoclose: true,//选中自动关闭
	        todayBtn: true,//显示今日按钮
	    });
	    $("#endTime").datetimepicker({
	        format: "yyyy-mm-dd hh:ii:ss",//显示格式
	        language: 'zh-CN',//显示中文
	        autoclose: true,//选中自动关闭
	        todayBtn: true,//显示今日按钮
	    });
}) */



//分页查询广告位置
function search_list(){
	 $("#file-table").bootstrapTable("refresh",{offset:1})
	}

    $("#file-table").bootstrapTable({
   	 url:"<%=request.getContextPath()%>/ggController/queryGuanggao.do",
   	 striped:true,
   	 search:true,
   	 method:"post",
   	toolbar:"#tb",
   	 searchOnEnterKey:true,
   	 //searchText:"大爷，搜我",
   	 showHeader:true,
   	 showColumns:true,
   	 showRefresh:true, 
   	 showToggle:true,
   	/*  showPaginationSwitch:true,
   	 paginationVAlign:"top",
   	 paginationHAlign:"left", */
   	 pagination: true,		   //开启分页
   	 pageNumber:1,              //初始化加载第几页,默认第1页
        pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
        pageList: [2, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
        contentType:"application/x-www-form-urlencoded;charset=UTF-8",	//必须的否则条件查询时会乱码
        //sidePagination: "server",  //分页方式:client客户端分页,server服务端分页
        queryParams:function(params){
        	//alert(params)
       	 //alert($("#costname").val())
   		 console.info(params.comname);
   		 params.comname = $("#comname").val();
			 return params;
		  },
  		 columns: [{
  		        field: 'id',
  		        title: '编号'
  		    }, {
  		        field: 'comname',
  		        title: '公司名称'
  		    },  {
                field: 'url',
                title: '广告图片',
                align: 'center',
                formatter: function(value,row,index){
                	
                    return "<img  src='"+row.url+"' class='img-rounded' width='74px' height='100px'>";
                }
            },]
		  
    })
    
    
    //新增广告位置
    
    function addguanggao(){
	 BootstrapDialog.show({
	        title : '新增广告信息 ',
	        message: $('<div></div>').load('addguanggao.jsp'),
	        buttons : [ {// 设置关闭按钮
	            label : '关闭',
	            action : function(dialogItself) {
	                dialogItself.close();
	            }
	        },{// 设置关闭按钮
	            label : '保存',
	            action : function(dialogItself) {
	            	$.ajax({
	            		url:"<%=request.getContextPath()%>/ggController/addguanggao.do",
	            		type:"post",
	            		data:$("#add_form_position").serialize(),
	            		success:function(){
	            			 dialogItself.close();
	            			 location.reload();
	            	$("#publishposition_info").bootstrapTable("refresh");	 
	            		}
	            	})
	               
	            }
	        } ],
	    });
	
	
	
	
	
}

</script>
</body>
</html>