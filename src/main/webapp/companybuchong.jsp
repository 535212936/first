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



<body>
<div class="container-fluid">
<div class="row-xs" style="height:70px"></div>
<div class="col-xs-4"></div>

		<form id="buchongcompany_form" class="form-inline">
		<div class="form-group">
        		<table>
        		<tr>
        		   <td colspan="2"><h1>&nbsp;&nbsp;&nbsp;公司信息补全</h1></td>
       			
       			</tr>
        		<tr>
        		   <td><span class="glyphicon glyphicon-apple" >法人</span> </td>
       			<td><input type="text" class="form-control" placeholder="请输入名" id="usernames" name="faren">
       			</td>
       			</tr>
       	
       			<tr>
        		   <td><span class="glyphicon glyphicon-bell" >法人身份证号</span> </td>
       			<td><input type="text" class="form-control" placeholder="请输入登录名" id="loginnames" name="farenid"></td>
       			</tr>
       			<tr>
        		   <td colspan="2">&nbsp;</td>
       			
       			</tr>
       			<tr>
        		   <td><span class="glyphicon glyphicon-certificate" >验证问题一</span> </td>
       				<td><select class="form-control" id="slpk" name="queone" onchange="selectOnchang(this)">
							<option>请选择</option>
					</select>
					</td>
       			</tr> 
       			<tr>
        		   <td><span class="glyphicon glyphicon-certificate" >答案一</span> </td>
       				<td><input type="text" class="form-control" placeholder="请输入答案一" id="logintime" name="anone"></td>
       			</tr> 
       			<tr>
        		   <td colspan="2">&nbsp;</td>
       			</tr>
       			<tr>
        		   <td><span class="glyphicon glyphicon-certificate" >验证问题二</span> </td>
       				<td><select class="form-control" name="quetwo" id="slpk1" onchange="selectOnchang(this)">
							<option>请选择</option>
						</select>
					</td>
       			</tr> 
       			<tr>
        		   <td><span class="glyphicon glyphicon-certificate" >答案二</span> </td>
       				<td><input type="text" class="form-control" placeholder="请输入答案一" id="logintime" name="antwo"></td>
       			</tr> 
       			<tr>
        		   <td colspan="2">&nbsp;</td>
       			</tr>
       			<tr>
        		   <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-success" onclick="buquan()" value="提交">&nbsp;&nbsp;<input type="reset" class="btn btn-warning" value="重置">&nbsp;&nbsp;<input type="button" class="btn btn-primary" onclick="fanhuimainclt()" value="返回"></td>
       			</tr> 
      		</div>
	
	<input type="hidden" name="id" value="${companyid}">
	<input type="hidden" name="biaoid" value="${biaoid}">
	
	</table>
	
	</form>

</div>

<script type="text/javascript">

$(function() {  
	  
    $.ajax({
    	url:"<%=request.getContextPath()%>/companyController/togetxiala.do",
    	type:"post",
    	dataType:"json",
    	success:function(result){
    		var options="";
    		var select = $("#slpk"); 
    		var select1 = $("#slpk1"); 
    		for (var i = 0; i< result.length; i++) {
				select.append("<option value='"+result[i].id+"'>"+result[i].text+"</option>");
				select1.append("<option value='"+result[i].id+"'>"+result[i].text+"</option>");
			}
    	
    	
    		
    	},
    	error:function(){
    		
    	}
    	
    }) 

    
})

function buquan(){
	  $.ajax({
	    	url:"<%=request.getContextPath()%>/companyController/buquancom.do",
	    	type:"post",
	    	data:$("#buchongcompany_form").serialize(),
	    	dataType:"json",
	    	success:function(result){
				alert("补全成功")
				
	    	},
	    	error:function(){
	    	}	
	    }) 
	
	
	
	
}
function fanhuimainclt(){
	
	history.go(-1);
	
	
}


</script>




</body>
</html>