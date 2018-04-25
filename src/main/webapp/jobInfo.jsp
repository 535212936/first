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
<input type="hidden" id="jobname" value="${job.jname }">

	<div style="float:left;width:1000px;height:200px">
		<font color="#46A3FF">详细信息</font>
		<li>招聘职位：${job.jname}</li><li>要&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;求：${job.jyaoqiu}</li>
		<li>主要工作：${job.jzhizhe }</li><li>公司名称：${job.comname }</li><li>公司简介：${job.cominfo }</li>
	</div>
	<div style="width:100%;height:500px">
		<hr color="#660000" size="5"  width="100%"/>
		<font color="#46A3FF">相关推荐</font><br><br>
		<table border="0" width="100%" class="tb">
			<thead id="tabletitle">
				<tr>				
					<td><font color="#46A3FF">职位名称</font></td>
					<td><font color="#46A3FF">公司名称</font></td>
					<td><font color="#46A3FF">最低月薪</font></td>
					<td><font color="#46A3FF">最高月薪</font></td>
					<td><font color="#46A3FF">工作地点</font></td>
				</tr>			
			</thead>
			<tbody id="showJobInfo">
			</tbody>
			</table>
	</div>
	




<script type="text/javascript">
	$(function(){
		var jname=$("#jobname").val();
			//alert(jname)
		$.ajax({
			url:"<%=request.getContextPath()%>/jobController/queryJobByName.do",
			data:{"name":jname},
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				tableHtml(pager)
			},
			error:function(){
			}				
		})		
	})
	
	
	function tableHtml(pager){
		var tr="";
		pager=eval("("+pager+")");
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].companyid)
		tr+="<tr>"
			+"<td>"+pager[i].jname+"</td>"
			+"<td>"+pager[i].comname+"</td>"
			+"<td>"+pager[i].jsalarymin+"</td>"
			+"<td>"+pager[i].jsalarymax+"</td>"
			+"<td>"+pager[i].jaddress+"</td>"
			+"</tr>";
	}
		$("#showJobInfo").html(tr);
	} 

</script>
</body>
</html>
