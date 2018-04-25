<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
    *{ margin:0px; padding: 0px;}
    .all{ width: 195px;margin: 0px auto;  }
    .text  {margin-top:0px; border: 0px solid black; height: 85px; overflow: hidden;}
    .text li{ list-style:none; text-align: center; height:30px; line-height:30px; border-bottom: 1px dashed #CCCCCC; }

    .alll{ width: 195px;margin: 0px auto;  }
    .textt  {margin-top:0px; border: 0px solid black; height: 85px; overflow: hidden;}
    .textt li{ list-style:none; text-align: center; height:30px; line-height:30px; border-bottom: 1px dashed #CCCCCC; }
	.login-dialog .modal-dialog {
                width: 1030px;
                height: 1100px;
            }
</style>

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
nijiushigegoulanzi

	<!-- 第三栏   分割线------------>
	<div id="showGuanggao"
		style="width: 1000px; height: 1080px; top: 215px; position: fixed; _position: absolute; left: 50%; margin-left: -500px;">
		
	</div>



<div class="modal-dialog" style="width:1050px;"></div>

<script type="text/javascript">
	$(function(){
		
		
		
		
		//主页广告位查询
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/goodslist.do",
			//data:"",
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				guanggaoHtml(pager)
			},
			error:function(){
				alert("查询出错！！！")
			}				
		})
		
		
	})
	
	

	
	
	function guanggaoHtml(pager){
		//alert(pager)
		var count=0;
		var tr="";
		pager=eval("("+pager+")");
		//alert(pager)
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].simage)
		tr+="<img src='"+pager[i].simage+"'  width='226px' height='100px'>"
		count++;
			if(count%4==0){
				tr+="<br/>"
			}
		}
		$("#showGuanggao").html(tr);
		//alert(tr)
	}
	
	
	
	function xinxi(sid){
		
		BootstrapDialog.show({
			   title:comname,
			   cssClass: 'login-dialog',
            message: $('<div></div>').load('<%=request.getContextPath()%>/ggController/companyjob.do?id='+sid),
            buttons: [{
                label: '关闭',
                action: function(dialog) {
                    //更改弹框标题
                    BootstrapDialog.closeAll();
                }
            }]
        });
		
		
	}
		
	
</script>
</body>
</html>