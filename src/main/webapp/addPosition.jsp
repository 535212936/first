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

<body>

<input type="hidden" id="companyidtoshowjifen" value="${companyid }">
<input type="hidden" id="companynametoshoujifen" value="${biaoid }">


<form id="add_form_position" class="form-horizontal">
<div class="modal-body">
  <div class="form-group">
  <label for="jname">职位名称</label>
  <input type="text" name="jname" class="form-control"  placeholder="职位名称">
  </div>
  <div class="form-group">
  <label for="jyaoqiu">职位要求</label>
  <textarea name="jyaoqiu" class="form-control"   placeholder="职位的要求..." ></textarea>
  </div>
  
  <div class="form-group">
  <label for="jzhizhe">主要职责</label>
  <textarea  name="jzhizhe" class="form-control"  placeholder="主要职责..." ></textarea>
  </div>
  <div class="form-group">
  <input type="hidden" name="jstatus"  value="2" >
  </div>
  
  <input type="hidden" value="${companyid}" name="companyid">
  <input type="hidden" value="${companyname}" name="companyname">
  
  <div class="form-group">
 <label for="jpnum">需要人数</label>
  <input  type="number" min="1" max="1000" size="200" name="jpnum" class="form-control"  placeholder="需要人数" >
  </div>
 <div class="form-group">
  <label for="jaddress">工作地点</label>
  <input type="text" name="jaddress" class="form-control"  placeholder="工作地点" >
  </div>
    <div class="form-group">
 <label for="jhotQWE">热度排行</label>
  <input  type="hidden" name="qweqwe" id="qweqwe" class="form-control">
  <input  type="text" name="jhot" id="jhot" class="form-control" onmouseout="ytu()"><br>
		<span id="yanzheng"></span>
  </div>
</div>


<button class="btn btn-large btn-primary" onclick="addpositionyk()" type="button">保存</button>
  <button class="btn btn-large" onclick="clostpositionyk()" type="button"> 取消 </button>
</form>
<script type="text/javascript">

$(function(){
	var id=$("#companyidtoshowjifen").val();
	var biaoid=$("#companynametoshoujifen").val();
	
	  $.ajax({
	        url:"<%=request.getContextPath()%>/companyController/selectcompanyjifen.do",
	        data:{"id":id,"biaoid":biaoid},
	        type:"post",
	        dataType:"json",
	        async:false,
	        success:function(data){
	        	var aa=eval("("+data+")")
	           $("#jhot").val(aa);
	           $("#qweqwe").val(aa);
	        },
	        error:function(){
	        }
	    })
})


function addpositionyk(){
	
	  var val = $("#jhot").val();//用户输入的值
      var reg = /([\u4E00-\u9FA5])+/;//只要包含中文就提示
      if(reg.test(val)){
      			$("#yanzheng").html("<font color='ff0000'>您输入的  排行中 不可输入中文!!</font>")
      	return false;
      }
    	var uiy = $("#qweqwe").val();//当前的所有积分
    	alert(typeof(uiy))
    	
    	
    	var uiywe = $("#jhot").val();//用户输入的值
    	var bijiao=uiy-uiywe;
    	alert(bijiao)
    	if(bijiao>0){
    		$.ajax({
    			url:"<%=request.getContextPath()%>/jobController/addPosition.do",
    			type:"post",
    			data:$("#add_form_position").serialize(),
    			dataType:"json",
    			success:function(result){
    				var id=$("#companyidtoshowjifen").val();//查id (字符串)
    				var biaoid=$("#companynametoshoujifen").val();//电话号是 18 查开头
    				
    				var ioio =  uiy - uiywe //将相减得数据传入后台修改
    				 
    				$.ajax({
    				        url:"<%=request.getContextPath()%>/companyController/updatejifen.do",
    				        data:{"id":id,"biaoid":biaoid,"ioio":ioio},
    				        type:"post",
    				        dataType:"text",
    				        async:false,
    				        success:function(){
    				    		location.reload();
    				        }
    				    })
    			},error:function(){
    			}  
    		}) 
    	}else{
    		$("#yanzheng").html("<font color='ff0000'>您输入的  排行  高于当前积分   如果您要输入当前的  排行量    请您前往充值!!</font>")
    }
}
function clostpositionyk(){
	dialogItself.close();
}


function ytu(){
		var jhot = $("#jhot").val();
		var uiy = $("#qweqwe").val();//当前的所有积分
    	var uiywe = $("#jhot").val();//用户输入的值

    	if(jhot != null && jhot != "" && uiy >= uiywe){
			$("#yanzheng").html("");
		}
}




</script>














</body>
</html>