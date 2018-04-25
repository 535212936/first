<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<!-- bootstrap-fileinput
<link href="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/css/fileinput.css" rel="stylesheet"> 
<script src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/js/fileinput.js"></script>
<script src="${pageContext.request.contextPath}/jquery/bootstrap-fileinput/js/locales/zh.js"></script>
 -->

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
<script
	src="${pageContext.request.contextPath}/jquery/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
<!-- bootstrap-select ������-->
<link
	href="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/css/bootstrap-select.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/bootstrap-select.min.js"></script>
<script
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i18n/defaults-zh_CN.min.js"></script>

</head>
<style>
   	.login-dialog .modal-dialog {
                width: 1000px;
            }
</style>

<body>
<div id="tbyk" >

 <button type="button" class="btn btn-danger glyphicon glyphicon-remove" onclick="deleteResumeyk()">一键忽略</button>
</div>

<input  type="hidden" id="companyidyk" name="companyid" value="${companyid}"  />
<table class="table" id="receiverrsume_info" border="1"></table>


<script type="text/javascript">

function deleteResumeyk(){
	var options=$("#receiverrsume_info").bootstrapTable("getSelections");
	if(options!=null && options.length>0){
		 BootstrapDialog.confirm({
			    type : BootstrapDialog.TYPE_WARNING, // <-- Default value is
			    title : '确认',
		        message : "你确认忽略你选定的简历吗？",
		        size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
		        closable : true, // <-- Default value is false，点击对话框以外的页面内容可关闭
		        draggable : true, // <-- Default value is false，可拖拽
		        btnCancelLabel : '取消', // <-- Default value is 'Cancel',
		        btnOKLabel : '确定', // <-- Default value is 'OK',
		        callback : function(result) {
		            // 点击确定按钮时，result为true
		            if (result) {
		                // 执行方法
		               var ids ="";
		                for (var i = 0; i < options.length; i++) {
							ids+=","+options[i].id;
							
						}
		                $.ajax({
		                	url:"<%=request.getContextPath()%>/jobController/deleteResumeyk.do",
		                	type:"post",
		                	data:{"ids":ids},
		                	success:function(){
		                		$("#receiverrsume_info").bootstrapTable("refresh");
		                	}
		                })
		            }
		        }
		    });
	}else{
		 BootstrapDialog.show({
			    type : BootstrapDialog.TYPE_DANGER,
		        title : '错误 ',
		        message : "请选择要操作的项",
		        size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
		        buttons : [ {// 设置关闭按钮
		            label : '关闭',
		            action : function(dialogItself) {
		                dialogItself.close();
		            }
		        } ],
		    });
	}

	
	
	
	
	
	
}


/* 
单个删除简历 */
function deletejianliyk(id){
	
	$.ajax({
		url:"<%=request.getContextPath()%>/jobController/deletejianliyk.do",
		type:"post",
		data:{"id":id},
		success:function(){
    $("#receiverrsume_info").bootstrapTable("refresh");
    
	   },error:function(){
		 alert("报错")  
		   
	   }
	})
   
}
















var compidyks=$("#companyidyk").val();

$("#receiverrsume_info").bootstrapTable({
	
	 url:"<%=request.getContextPath()%>/jobController/queryReceiveResume.do?companyid="+compidyks,
	                                         
	// striped:true,//开启条纹样式
	 bordered:true,
	 search:true,//搜索框
	// searchOnEnterKey:true,//仅允许单选 
	// searchText:"大爷，搜我",
	 showHeader:true,
	
	 showColumns:true, //是否显示所有的列
	 showRefresh:true, //是否显示刷新按钮
	 showToggle:true,//纵行展示信息单个
	 //showPaginationSwitch:true,
	 paginationVAlign:"bottom",
	 paginationHAlign:"left", 
	 toolbar:"#tbyk",
	 pagination: true, 		   //开启分页
	 pageNumber:1,              //初始化加载第几页,默认第1页
     pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
     pageList: [2, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
  // contentType:"application/x-www-form-urlencoded;charset=UTF-8",	//须的否则条件查询时会乱码
   // sidePagination: "server",  //分页方式:client客户端分页,server服务端分页
    // queryParams:function(params){
	//	 console.info(params);
		// params.name = $("#name").val();
		// params.startTime  = $("#startTime").val();
		// params.endTime = $("#endTime").val();
	//	 return params;
	 // }, 
		 columns: [{
		    checkbox:true,
		},{
		        field: 'username',
		        title: '求职者姓名',
		        width: 170
		    }, {
		        field: 'userphone',
		        title: '求职者电话',
		        width: 170
		    },{
		        field: 'sex',
		        title: '性别',
		        width: 170
		    }, {
		        field: 'birthday',
		        title: '出生年月',
		        width: 170
	
		    },{
		        field: '',
		        title: '操作',
		       	formatter:function(value,row,index){ 
		       		
			        if(row.zhuangtai==1){
			        	
			      return "<button type='button' class='btn btn-warning glyphicon glyphicon-plane' onclick=chakanjianli('"+row.resumeid+"')>查看详情</button>"+
			        "<button type='button' class='btn btn-danger glyphicon glyphicon-remove' onclick=deletejianliyk('"+row.id+"')>忽略简历</button>"+"<button type='button'   class='btn btn-success glyphicon glyphicon-envelope'  onclick=yaoyueyk('"+row.id+"')>邀约面试</button> ";
			        
			        }else{
			        	
				     return "<button type='button' class='btn btn-warning glyphicon glyphicon-plane' onclick=chakanjianli('"+row.resumeid+"')>查看详情</button>"+
				        "<button type='button' class='btn btn-danger glyphicon glyphicon-remove' onclick=deletejianliyk('"+row.id+"')>忽略简历</button>" + "<button type='button'   class='btn btn-primary glyphicon glyphicon-user'  onclick=yiyaoyue()>已邀约</button> "
		       	
			        }
			        
			       
			               }
			        }]


		})


		function yiyaoyue(){
			
			  $("#receiverrsume_info").bootstrapTable("refresh");
		}

		/**
		 * 邀约面试,先查询一下他们的邮箱号getEmpEmail
		 */
		function yaoyueyk(id){
			//$('button').addClass('disabled'); //所有的按钮都失效
			//$('button').prop('disabled', true); //所有的按钮都失效
			//$("#sppanddd").html("已邀约");
			 
			$.ajax({
				url:"<%=request.getContextPath()%>/mailController/selectMailName.do",
				type:"post",
				data:{"id":id},
				dataType:"json",
				success:function(result){
					var to = result.youxiang;
					
					$.ajax({
						url:"<%=request.getContextPath()%>/mailController/getEmpEmail.do",
						type:"post",
						data:{"to":to},
						dataType:"text",
						success:function(result){
							if(result){
					 $("#receiverrsume_info").bootstrapTable("refresh");
							}
					   }
					})
			   },error:function(){
				   alert("错误")
				   
			   }
			})
		}



		 function chakanjianli(resumeid){
				
				BootstrapDialog.show({
					   title:'简历详情',
					   cssClass: 'login-dialog',
		               message: $('<div></div>').load('<%=request.getContextPath()%>/resumecontroller/selectresumeall.do?resumeid='+resumeid),
		              
		           });
					
			}


		</script>




		</body>
		</html>