<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="addjifenyk">
<center>
 <table>
<tr>
	<td>  请输入你要充值的金额:<input id="jineyk" type="number" min="1" max="1000000" size="200" style="width:320px" class="form-control"  placeholder="输入金额" onmouseout="xinzengjifenyk()" ></td>
</tr>
<tr>
	<td> 积分数量:<input id="jifencountyk" type="number" readonly  style="width:320px" class="form-control"  placeholder="积分数量"  ></td>
	<tr>
</table>
 <br>
<button  class="btn btn-primary glyphicon glyphicon-thumbs-up" onclick="chongzhiyk()">充值积分</button>
<button  class="btn btn-warning glyphicon glyphicon-thumbs-down" onclick="quxiaochongzhiyk()">取消充值</button>

</center>


</form>

<input type="hidden" id="companyidtoshowjifen" value="${companyid }">
<input type="hidden" id="companynametoshoujifen" value="${biaoid }">



<script type="text/javascript">
function xinzengjifenyk(){
	var money = $("#jineyk").val();
	$("#jifencountyk").val(money*10);
}


function chongzhiyk(){

var id=$("#companyidtoshowjifen").val();
var biaoid=$("#companynametoshoujifen").val();
  var jifen=$("#jineyk").val()*10;

  
$.ajax({
	url:"<%=request.getContextPath()%>/companyController/updatejifenyk.do",
	type:"post",
	 data:{"id":id,"biaoid":biaoid,"jifen":jifen},
	success:function(){
		
$("#addjifenyk").bootstrapTable("refresh");	 
	}

})

}

function quxiaochongzhiyk(){

dialogItself.close();	
	
	
}







</script>











</body>
</html>