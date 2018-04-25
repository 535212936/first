<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<form id="updateresume">
<c:forEach items="${resume}" var="resume" >
 <center><h1><input type="text"  name="resumename"  value="${resume.resumename }"></h1></center>
 	<input type="hidden" name="resumeid" value="${resume.resumeid }">
 	<input type="hidden" name="resumebid" value="${resume.resumebid }">
 	<input type="hidden" name="resumecid" value="${resume.resumecid }">
 	<input type="hidden" name="resumedid" value="${resume.resumedid }">
 	<input type="hidden" name="userid" value="${resume.userid }">
<table border="5" width="95%" height="1000" class=" " >

<tr  align="center"><!--1-->
<td style="width:150px"><b>姓名</b></td>
<td  style="width:200px"><input type="text"  name="username" value="${resume.username }" style="height:100%;width:100%"></td>
<td style="width:150px"><b>性别</b></td>
<td style="width:200px"><input type="text"  name="sex" value="${resume.sex }" style="height:100%;width:100%"></td>
<td style="width:150px"><b>出身年月</b></td>
<td style="width:180px"><input type="text"  name="birthday" value="${resume.birthday }" style="height:100%;width:100%"></td>
<td rowspan="3" style="width:180px;height:100px" ><img src="${resume.photo}" style="height:100%;width:100%" ></td>
</tr>

<tr  align="center"><!--2-->
<td><b>籍贯</b></td>
<td><input type="text"  name="jiguan" value="${resume.jiguan }" style="height:100%;width:100%"></td>
<td><b>民族</b></td>
<td><input type="text"  name="minzu" value="${resume.minzu }" style="height:100%;width:100%"></td>
<td><b>政治面貌</b></td>
<td><input type="text"  name="zhengzhimianmao" value="${resume.zhengzhimianmao }" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--3-->
<td><b>婚姻状况</b></td>
<td><input type="text"  name="hunyinzhuangkuang" value="${resume.hunyinzhuangkuang }" style="height:100%;width:100%"></td>
<td><b>健康状况</b></td>
<td><input type="text"  name="jiankangzhuangkuang" value="${resume.jiankangzhuangkuang }" style="height:100%;width:100%"></td>
<td><b>手机号码</b></td>
<td><input type="text"  name="userphone" value="${resume.userphone }" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--4-->
<td><b>毕业学校</b></td>
<td><input type="text"  name="biyexuexiao" value="${resume.biyexuexiao }" style="height:100%;width:100%"></td>
<td><b>所学专业</b></td>
<td  colspan="2"><input type="text"  name="zhuanye" value="${resume.zhuanye }" style="height:100%;width:100%"></td>

<td><b>学历</b></td>
<td><input type="text"  name="xueli" value="${resume.xueli }"  style="height:100%;width:100%"></td>
</tr>

<tr  align="center"><!--7-->
<td rowspan="6"><b>工作履历</b></td>
<td colspan="2"><b>起止年月</b></td>

<td colspan="2"><b>在何单位</b></td>

<td colspan="2"><b>任何职务</b></td>

</tr>

<tr  align="center"><!--8-->

<td colspan="2"><input type="text"  name="qizhinianyue" value="${resume.qizhinianyue }" style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanwei" value="${resume.zaihedanwei }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwu" value="${resume.renhezhiwu }"  style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--9-->

<td colspan="2"><input type="text"  name="qizhinianyuea" value="${resume.qizhinianyuea }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweia" value="${resume.zaihedanweia }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwua" value="${resume.renhezhiwua }" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--10-->

<td colspan="2"><input type="text"  name="qizhinianyueb" value="${resume.qizhinianyueb }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweib" value="${resume.zaihedanweib }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwub" value="${resume.renhezhiwub }" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--11-->

<td colspan="2"><input type="text"  name="qizhinianyuec" value="${resume.qizhinianyuec }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweic" value="${resume.zaihedanweic }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwuc" value="${resume.renhezhiwuc }"  style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--12-->

<td colspan="2"><input type="text"  name="qizhinianyued" value="${resume.qizhinianyued }"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweid" value="${resume.zaihedanweid}"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwud"  value="${resume.renhezhiwud }"  style="height:100%;width:100%"></td>

</tr>


<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>求职意向</b></td>
<tr  align="center"><!--5-->
<td><b>目标职位</b></td>
<td><input type="text"  name="mubiaozhiwei" value="${resume.mubiaozhiwei }"  style="height:100%;width:100%"></td>
<td><b>工作性质</b></td>
<td colspan="2"><input type="text"  name="gongzuoxingzhi" value="${resume.gongzuoxingzhi }"  style="height:100%;width:100%"></td>

<td><b>邮箱</b></td>
<td><input type="text"  name="youxiang" value="${resume.youxiang }"  style="height:100%;width:100%"></td>
</tr>



<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>项目介绍</b></td>

<tr  align="center" ><!--13-->
<td  ><b>项目名称</b></td>
<td colspan="6" ><input type="text"  name="xiangmumingcheng" value="${resume.xiangmumingcheng }"  style="height:100%;width:100%"></td>

<tr  align="center" ><!--13-->
<td  ><b>开发环境</b></td>
<td colspan="6" ><input type="text"  name="kaifahuanjing" value="${resume.kaifahuanjing }"  style="height:100%;width:100%"></td>

<tr  align="center" ><!--13-->
<td ><b>项目描述</b></td>
<td colspan="6"  ><input type="text"  name="xiangmumiaoshu" value="${resume.xiangmumiaoshu }"  style="height:100%;width:100%"></td>
<tr  align="center" ><!--13-->
<td  ><b>功能模块</b></td>
<td colspan="6" ><input type="text"  name="gongnengmokuai" value="${resume.gongnengmokuai }"  style="height:100%;width:100%"></td>
</table>
修改照片请在此处添加要修改的照片
<center><div style="width:11">
<input id="file-0a" class="file" name="file" type="file"  data-min-file-count="1"   >
<input id="touxiang" name="photo"  value="${resume.photo}"   type="hidden">
</div></center>
</c:forEach>
<center><button type="button" class="btn btn-default btn-success" onclick="updatere()">提交</button> </center>
</form>
<script type="text/javascript">
$('#file-0a').fileinput({
    language: 'zh',
   	
    uploadUrl: '${pageContext.request.contextPath}/userController/uploadMultipleFile.do',
    allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash']
});

$('#file-0a').on('fileuploaded', function(event, data, previewId, index) { 

	 var response = data.response;
      
	 $("#touxiang").val(response.url);
     
   });
$('#file-0a').on('fileerror', function(event, data) {
	alert("失败");
   });


function updatere() {
	
    $.ajax({
    	
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json", //预期服务器返回的数据类型
        url: "<%=request.getContextPath()%>/resumecontroller/updateresume.do",
        data: $('#updateresume').serialize(),
        success: function (result) {

            alert("修改成功");
        	history.go(0);
            
            BootstrapDialog.closeAll();
           
        },
        error : function() {
            alert("异常！");
        }
    });
}
</script>
</body>
</html>