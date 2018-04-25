<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
   	.login-dialog .modal-dialog {
                width: 1030px;
            }
        
            
            
</style>
<body >
<form id="toudijianli">
	<input type="hidden" name="companyid" value="${companyid}">
	<input type="hidden" name="companyidpp" value="${user.username}">
	请选择要投递的简历:
	<div class="btn-group" data-toggle="buttons" id="danxuan" style="width:1000px">
	</div>
	</form>
	<script type="text/javascript">
	
	$(function(){
		/*  var opt = $("#companyidpp").val();
		 alert(opt) 
	   	 if(op != null && op !=""){*/
	   	
		$.ajax({
			url:"<%=request.getContextPath()%>/resumecontroller/selectresume.do",
			
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
	/*    	}else{
	 		 alert("请您先登录 !!")
	 		 location.reload();
	 	} */
	})
	
	
	function tableHtml(pager){
		var tr="";
		pager=eval("("+pager+")");
		
	for (var i = 0; i < pager.length; i++) {
		
		tr+="<input type='radio' name='resumeid' value='"+pager[i].resumeid+"'>"+pager[i].resumename;
	}
		$("#danxuan").html(tr);
	} 
	
	</script>
</body>
</html>