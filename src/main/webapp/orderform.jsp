<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.login-dialog .modal-dialog {
                width: 1030px;
                height: 1100px;
      }
</style>




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



</head>
<body>
<input type="hidden" id="cid" value="${companyid }"/><!-- ${companyid } -->

<div class="panel panel-primary">
	<div>
    	<form class="form-inline">
     		<!-- <div class="form-group">
        		<label class="sr-only" >商品名称:</label>
       			<input type="text" class="form-control" placeholder="请输入名称" id="comname" name="comname">
      		</div> -->
      		<!-- <div class="form-group">
        		<label class="sr-only" >注册日期:</label>
       			<input type="text" class="form-control" id="startTime" name="stratTime">
       			<input type="text" class="form-control" id="endTime" name="endTime">
      		</div> -->
    	</form>
    </div>

	<div id="tb">
		 <button type="button" class="btn btn-info glyphicon glyphicon-arrow-left" onclick="fanhui()">返回</button>
		 <button type="button" class="btn btn-info glyphicon glyphicon-refresh" onclick="shuaxin()">刷新</button>
		 <button type="button" class="btn btn-info glyphicon glyphicon-folder-open" onclick="myComment()"> 我的评论</button>
		 <!-- <button type="button" class="btn btn-danger glyphicon glyphicon-remove" onclick="deleteguanggao()">删除</button>
		 <button type="button" class="btn btn-success glyphicon glyphicon-edit" onclick="updateguanggao()">修改</button>
	   -->
	</div>
    	<table class="table" id="file-table" border="1"></table>
</div>




<script type="text/javascript">
function search_list(){
	 $("#file-table").bootstrapTable("refresh",{offset:1})
	}
	var cid = document.getElementById("cid").value;
	//alert(cid)
   $("#file-table").bootstrapTable({
  	 url:"<%=request.getContextPath()%>/goodsController/queryGoods.do?id="+cid,
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
       pageList: [6, 9 ,12 ,15],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
       contentType:"application/x-www-form-urlencoded;charset=UTF-8",	//必须的否则条件查询时会乱码
       //sidePagination: "server",  //分页方式:client客户端分页,server服务端分页
       queryParams:function(params){
       	//alert(params)
      	 //alert($("#costname").val())
  		 //console.info(params.comname);
  		 //params.comname = $("#comname").val();
			// return params;
		  },
 		 columns: [{
 		        field: 'goodname',
 		        title: '商品名称'
 		    }, {
 		        field: 'price',
 		        title: '商品单价'
 		    }, {
 		        field: 'goodcount',
 		        title: '购买数量'
 		    }, {
 		        field: 'goodinfo',
 		        title: '商品简介'
 		    },{
               field: 'goodimage',
               title: '图片',
               align: 'center',
               formatter: function(value,row,index){
               		//alert(row.goodimage)
                   return "<img  src='"+row.goodimage+"' class='img-rounded' width='74px' height='100px'>";
               }
           },{
 		        field: 'status',
 		        title: '订单状态',
 		        	formatter: function(value,row,index){
 						if (row.status==1){
 							return "未评价";
 						} else {
 							return "已评价";
 						}
 					}
 		    },{
 		        field: 'buytime',
 		        title: '购买时间'
 		    },{
		        field: '',
		        title: '操作',
		        formatter:function(value,row,index){
	   		    	
		        	var anniu="<button type='button' class='btn btn-danger glyphicon glyphicon-trash' onclick='deleteorder(\""+row.id+"\")'>删除</button><button type='button' class='btn btn-info glyphicon glyphicon-pencil' onclick='pinglun("+row.goodid+")'>评论</button>";
		        	//var anniu="<button type='button' class='btn btn-info glyphicon glyphicon-trash' onclick='deleteorder()'>删除</button>";
		        	//var anniu="<a href='javascript:void(0);' onclick='deleteorder(\""+row.id+"\")'>5555</a>";
		        	//<input type='button' value='投递简历' onclick='chakanjob(\""+row.companyid+"\")'>
	   		    	 return anniu;
	   		     }
   		 	
		 
   		    }]
		  
   })
   
   
	//删除操作
	function deleteorder(id){
		alert(id)
		if(confirm("确定要删除记录吗？删除后不能恢复噢！")){
			$.ajax({
				url:"<%=request.getContextPath()%>/goodsController/deleteorder.do",
				data:{"id":id},
				type:"post",
				datatype:"json",
				async:false,
				success:function (pager){
					location.reload();
				},
				error:function(){
					alert("后台出错！！！")
				}				
			})
		}
	}
	
	
	function fanhui(){
		history.go(-1);
	}
	function shuaxin(){
		location.reload();
	}
	
	
	

	function pinglun(goodid){
		var id = $("#cid").val();
		//alert(id)
		//alert(goodid)
		BootstrapDialog.show({
			   title:'评论',
			   cssClass: 'login-dialog',
            message: $('<div></div>').load('<%=request.getContextPath()%>/goodsController/tiaozhuan.do?uid='+id+'&&gid='+goodid),
            buttons: [{// 设置关闭按钮
	            label : '保存',
	            action : function(dialogItself) {
	            	$.ajax({
	            		url:"<%=request.getContextPath()%>/goodsController/addcomment.do",
	            		type:"post",
	            		data:$("#pinglunform").serialize(),
	            		success:function(result){
	            			if(result == true){}
	            			alert("保存成功！！")
	            			 dialogItself.close();
	            			 location.reload();
	            		},
	            		error:function(){
	            			alert("后台报错!!")
	            		}
	            	})
	               
	            }
	        }]
        });
	}
	
	
	function myComment(){
		var userid = $("#cid").val()
		//alert(userid)
		location.href="<%=request.getContextPath()%>/goodsController/tiaozhuanym.do?id="+userid;
	}
</script>
</body>
</html>