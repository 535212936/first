<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="update_form_position" class="form-horizontal">
<input type="hidden" name="jid" id="jid" >
<div class="modal-body">
  <div class="form-group">
  <label for="jname">职位名称</label>
  <input type="text" name="jname" id="jname" class="form-control"  >
  </div>
  <div class="form-group">
  <label for="jyaoqiu">职位要求</label>
  <textarea name="jyaoqiu" class="form-control" id="jyaoqiu"  ></textarea>
  </div>
  
  <div class="form-group">
  <label for="jzhizhe">主要职责</label>
  <textarea  name="jzhizhe" class="form-control" id="jzhizhe"  ></textarea>
  </div>
  <div class="form-group">
  <input type="hidden" name="jstatus"  value="2" >
  </div>
  
  <input type="hidden" value="${companyid}" name="companyid">
  <input type="hidden" value="${companyname}" name="companyname">
  
  <div class="form-group">
 <label for="jpnum">需要人数</label>
  <input  type="number" min="1" max="1000" size="200" id="jpnum" name="jpnum" class="form-control"   >
  </div>
 <div class="form-group">
  <label for="jaddress">工作地点</label>
  <input type="text" name="jaddress" id="jaddress" class="form-control"  >
  </div>
    <div class="form-group">
 <label for="jhot">热度排行</label>
  <input  type="number" min="1" max="1000" id="jhot" size="8" name="jhot" class="form-control"  >
  </div>
</div>


</form>
<script type="text/javascript">
var id= <%=request.getParameter("jid")%>


$(function(){
	
	 $.ajax({
			url:"<%=request.getContextPath()%>/jobController/queryjobByid.do",
			type:"post",
			data:{"jid":id},
			dataType:"json",
			success:function(result){	
				$("#jid").val(result.jid);
				$("#jname").val(result.jname);
				$("#jyaoqiu").val(result.jyaoqiu);
				$("#jzhizhe").val(result.jzhizhe);
				$("#jpnum").val(result.jpnum);
				$("#jaddress").val(result.jaddress);
				$("#jhot").val(result.jhot);
			   
				},error:function(){
					 $.messager.alert('警告','报错'); 
				}
			})
			
			
	
	
	
	
	
})









</script>






</body>
</html>