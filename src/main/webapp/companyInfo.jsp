<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
html,body{
    height: 100%;
    font-size: 15px;
    color: black;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    user-select:none;
    -webkit-user-select: none;/*��ֹ�û�ѡ��ҳ���е�����*/
}
.tb{
    width: 1000px;
    border: 3px solid #DDDDDD;
    border-radius: 15px;
    box-shadow: 2px 3px 5px #DDDDDD;
}
.tb tr{
    background: #F0F0E1;
    height: 30px;
}
.tb tr td{
    border: 1.5px solid #FFFFFF;
    text-align: center;

}
.tb tr th{
    border: 1.5px solid #FFFFFF;
    background: #888888;
    color: white;
    border-top:none;
}
.tb tr th:nth-child(1){
    border-top-left-radius:15px;
    border-left: none;
    border-top:none;
}
.tb tr th:last-child{
    border-top-right-radius:15px;
    border-right: none;
}
.tb tr:nth-child(1){

    background:#99B3FF;

}
.tb tr:nth-child(2n+1){
    background:#DDDDDD;
}
.tb tr:hover{
    background:#DDDDDD;
    opacity: 0.6;

}
.tb tr:nth-child(1):hover{
    border: 1.5px solid #FFFFFF;
    opacity: 1;
}
.tb tr:last-child td:nth-child(1){

    border-bottom-left-radius:15px;
}
.tb tr:last-child td:last-child{

    border-bottom-right-radius:15px;
}
</style>
</head>
<body>

<div style="float:left;width:1000px;height:200px">
<input type="hidden" id="companyid" value="${com.id}">
<input type="hidden" id="companyidrt" value="${user.username}">
<!-- 判断是否登录	-->

		<font color="#46A3FF">详细信息</font>
		<li>公司名称：${com.companyname }</li>
		<li>公司法人：${com.faren }</li>
		<li>公司简介：${com.companyinfo }</li>
	</div>
	<div style="width:100%;height:500px">
		<hr color="#660000" size="5"  width="100%"/>
		<font color="#46A3FF">发布职位</font><br><br>
		<table border="0" width="100%" class="tb">
			<thead id="tabletitle">
				<tr>				
					<td><font color="#46A3FF">职位名称</font>	</td>
					<td><font color="#46A3FF">职位要求</font>	</td>
					<td><font color="#46A3FF">职位职责</font>	</td>
					<td><font color="#46A3FF">最低月薪</font>	</td>
					<td><font color="#46A3FF">最高月薪</font>	</td>
					<td><font color="#46A3FF">工作地点</font>	</td>
				</tr>	
			</thead>
			<tbody id="showJobInfo">
			</tbody>
			</table>
	</div>





<script type="text/javascript">
	$(function(){
		var comid=$("#companyid").val();
			//alert(comid)
		$.ajax({
			url:"<%=request.getContextPath()%>/ggController/queryCompanyJob.do",
			data:{"id":comid},
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
		//alert(pager)
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].companyid)
		tr+="<tr style='henght:20'>"
			+"<td>"+pager[i].jname+"</td>"
			+"<td>"+pager[i].jyaoqiu+"</td>"
			+"<td>"+pager[i].jzhizhe+"</td>"
			+"<td>"+pager[i].jsalarymin+"</td>"
			+"<td>"+pager[i].jsalarymax+"</td>"
			+"<td><input type='button'class='btn btn-success' value='投递简历' onclick='toudijianli(\""+pager[i].companyid+"\")'></td>"
			+"</tr>";
	}
		$("#showJobInfo").html(tr);
	} 

	function toudijianli(qweq){
			
		 var op = $("#companyidrt").val();
	   	 if(op != null && op !=""){
		
			BootstrapDialog.show({
				   title:'请选择投递的简历',
				   cssClass: 'login-dialog',
	               message: $('<div></div>').load('<%=request.getContextPath()%>/resumecontroller/zcytdjl.do?companyid='+qweq),
	               buttons: [{
	                   label: '关闭',
	                   action: function(dialog) {
	                       //更改弹框标题
	                       BootstrapDialog.closeAll();
	                   }
	            	   },{
	                   label: '确定投递',
	                   action: function(dialog) {
	                	   $.ajax({
	   	            		url:"<%=request.getContextPath()%>/resumecontroller/addrecom.do",
	   	            		type:"post",
	   	            		data:$("#toudijianli").serialize(),
	   	            		success:function(){
	   	            			alert("投递成功");
	   	            			BootstrapDialog.closeAll();
	   	            		}
	   	            	})
	                   }
	               }]
	           });
	 	}else{
	 		 alert("请您先登录 !!")
	 	}
	}
</script>
</body>
</html>