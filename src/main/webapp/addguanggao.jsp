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



	<form id="add_form_position" class="form-horizontal">
		<div class="modal-body">
			<div class="form-group">
				<label for="comid"><font>公司名称</font></label>
			<select class="combobox" id="shoucompany" name="comid">
			</select>
			</div>
			<div class="form-group">
			<label for="disabledTextInput"><font>请上传您的广告底图</font></label>
				<center>
					<input id="file-0a" class="file" name="file" type="file" multiple data-min-file-count="1"> 
					<input type="hidden" id="url" name="url" /> 

				</center>
			</div>



		</div>


	</form>


<script type="text/javascript">

var aa="";
$('#file-0a').fileinput({
    language: 'zh',
   //uploadAsync:false,
    uploadUrl: '<%=request.getContextPath()%>/ggController/upfile.do',
    allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash']
});

$('#file-0a').on('fileuploaded', function(event, data, previewId, index) { 
			//alert(data.response.url)
 			aa=data.response.url;
			$("#url").val(aa);
});
$('#file-0a').on('fileerror', function(event, data) {
alert("失败");
})



</script>

	<script type="text/javascript">
	$(function(){
		
		$.ajax({
			url:"<%=request.getContextPath()%>/ggController/queryselect.do",
						type : "post",
						datatype : "json",
						async : false,
						success : function(pager) {
							tableHtml(pager)
						},
						error : function() {
							alert("查询出错！！！")
						}
					})
		})

		function tableHtml(pager) {
			var tr = "";
			pager = eval("(" + pager + ")");
			//alert(pager)
			for (var i = 0; i < pager.length; i++) {
				//alert(pager[i].companyid)
				tr += "<option value='"+pager[i].id+"'>"
						+ pager[i].companyname + "</option>";
			}
			$("#shoucompany").html(tr);
		}
	</script>
</body>
</html>