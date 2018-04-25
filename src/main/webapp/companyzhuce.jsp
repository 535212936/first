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
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i14n/defaults-zh_CN.min.js"></script>
<body>

<center><h5>招聘网</h5><h1>公司账号注册</h1></center>

<form class="form-horizontal" id="tosavecompanyform" role="form">

  <div class="form-group">
    <label class="col-sm-4 control-label">公司名</label>
    <div class="col-sm-4">
      <input class="form-control" name="companyname" id="focusedInput" type="text" placeholder="贵公司名称">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword" class="col-sm-4 control-label">密码</label>
    <div class="col-sm-4">
      <input class="form-control" name="cpassword" id="disabledInput" type="password" placeholder="请输入密码" >
    </div>
  </div>
 
    <div class="form-group">
      <label for="disabledTextInput" class="col-sm-4 control-label">确认密码</label>
      <div class="col-sm-4">
        <input type="password" id="disabledTextInput" class="form-control" placeholder="再次输入密码">
      </div>
    </div>
    <div class="form-group">
      <label for="disabledTextInput" class="col-sm-4 control-label">手机号</label>
      <div class="col-sm-4">
        <input type="text" id="cphone" name="cphone" class="form-control" placeholder="请输入手机号">
      </div>
    </div>
    <div class="form-group">
      <label for="disabledTextInput" class="col-sm-4 control-label"></label>
      <div class="col-sm-4">
       <button type="button" id="anniu" onclick="fasongyz()" class="btn btn-success">发送验证码(<strong class="a">60</strong>秒 )</button>
      </div>
    </div>
   
    <div class="form-group">
      <label for="disabledTextInput" class="col-sm-4 control-label" >验证码</label>
      <div class="col-sm-4">
        <input type="text" id="disabledTextInput" name="ycode" class="form-control" placeholder="请输入收到的验证码">
      </div>
    </div>
   <!--  <div class="form-group">
      <label for="disabledSelect" class="col-sm-3 control-label">禁用选择菜单（Fieldset disabled）</label>
      <div class="col-sm-9">
        <select id="disabledSelect" class="form-control">
          <option>禁止选择</option>
        </select>
      </div>
    </div> -->
 
<div class="form-group">
<center>
<label for="disabledTextInput" class="col-sm-4 control-label" >请上传您的营业执照正反面</label>
<input id="file-0a" class="file" name="file" type="file" multiple data-min-file-count="1"> 


<input type="button" onclick="tijiao()" class="btn btn-success" value="提交" />
<input type="hidden" id="imageid" name="faren"/>
<input type="hidden" id="jifen" name="jifen" value="0"/>
<input type="hidden" id="zongjifen" name="zongjifen" value="0"/>
<input type="hidden" id="member" name="member" value="0"/>

</center>
  </div>
</form>
<script type="text/javascript">

var aa="";
$('#file-0a').fileinput({
    language: 'zh',
   //uploadAsync:false,
    uploadUrl: '<%=request.getContextPath()%>/companyController/upfile.do',
    allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash']
});

$('#file-0a').on('fileuploaded', function(event, data, previewId, index) { 
			
 			aa+=data.response.url+",";
});
$('#file-0a').on('fileerror', function(event, data) {
alert("失败");
})



</script>
<script type="text/javascript">
function fasongyz(){

	
	var phone=$("#cphone").val();
	if(phone==null||phone==""){
		
		alert("请输入合法号码")
		
	}else{
		$("#anniu").prop("disabled",true);
		$("#anniu").html("再次发送"+"(<strong class='a'>60</strong>秒 )")
		$(document).ready(function() {
			var times = 60 * 100; // 60秒
			countTime = setInterval(function() {
				times = --times < 0 ? 0 : times;
				var ms = Math.floor(times / 100).toString();

				if(ms.length <= 1) {
					ms = "0" + ms;
				}
				var hm = Math.floor(times % 100).toString();
				if(hm.length <= 1) {
					hm = "0" + hm;
				}
				if(times == 0) {
					
					$("#anniu").removeAttr("disabled");
					$("#anniu").html("再次发送"+"(<strong class='a'>60</strong>秒 )")
					
					
					
					clearInterval(countTime);
				}
				// 获取分钟、毫秒数
				$(".a").html(ms);
				$(".b").html(hm);
			}, 10);
		});
		
		
		
	$.ajax({
		url:"<%=request.getContextPath()%>/companyController/getyanzhengma.do",
		type:"post",
		data:{"phone":phone},
		dataType:"json",
		async:false,
		success:function (){
			
		},
		error:function(){
			alert("验证码发送出错！！！")
		}				
	})
}}

function tijiao(){
	
		$("#imageid").val(aa);
		
		$.ajax({
			url:"<%=request.getContextPath()%>/companyController/tosavecompany.do",
			type:"post",
			data:$("#tosavecompanyform").serialize(),
			dataType:"json",
			async:false,
			success:function (result){
				if(result=="1"){
					alert("恭喜您,注册成功")
					location.href="<%=request.getContextPath()%>/companylogin.jsp"
				}
				if(result=="3"){
					alert("手机号不符合规则")
				}
				if(result=="4"){
					alert("账号已存在")
				}
				if(result=="5"){
					alert("验证码超时或输错了")
				}
			},
			error:function(){
				alert("验证码发送出错！！！")
			}				
		})
	
	
	
	
	
}



</script>

</body>
</html>