<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.tb tr td{
    border: 1.5px solid #FFFFFF;
    text-align: center;
    width:110px

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



<body>
<table border="0" width="100%" class="tb">
			<thead id="tabletitle">
				<tr>				
					<td><font color="#46A3FF">商品名称</font></td>
					<td><font color="#46A3FF">商品单价</font></td>
					<td><font color="#46A3FF">购买数量</font></td>
					<td widt="100"><font color="#46A3FF">商品简介</font></td>
					<td><font color="#46A3FF">图片</font></td>
					<td><font color="#46A3FF">购买时间</font></td>
				</tr>			
			</thead>
			<tbody id="showJobInfo">
			</tbody>
			</table>
			<form role="form" id="pinglunform">
			评论信息：<div class="form-group">
			    <textarea class="form-control" rows="3" name="comment"></textarea>
			  </div>
<input type="hidden" id="userid" value="${uid }" name="userid"/>
<input type="hidden" id="goodid" value="${gid }" name="goodid"/>
			  </form>





<script type="text/javascript">
$(function(){
	var uid=$("#userid").val()
	var gid=$("#goodid").val()
	$.ajax({
		url:"<%=request.getContextPath()%>/goodsController/querygoodsById.do",
		data:{"uid":uid,"gid":gid},
		type:"post",
		datatype:"json",
		async:false,
		success:function (pager){
			tableHtml(pager)
		},
		error:function(){
			alert("查询出错！！！")
		}				
	})	
})
	function tableHtml(pager){
		var tr="";
		pager=eval("("+pager+")");
		
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].companyid)
		tr+="<tr>"
			+"<td>"+pager[i].goodname+"</td>"
			+"<td>"+pager[i].price+"</td>"
			+"<td>"+pager[i].goodcount+"</td>"
			+"<td>"+pager[i].goodinfo+"</td>"
			+"<td><img  src='"+pager[i].goodimage+"' class='img-rounded' width='74px' height='100px'></td>"
			+"<td>"+pager[i].buytime+"</td>"
			+"</tr>";
	}
		$("#showJobInfo").html(tr);
	} 
  
</script>
</body>
</html>