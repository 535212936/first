<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form id="addresume">

 <h1><center><input type="text"  name="resumename"  placeholder="请输入简历名称"></center></h1>
 	<input type="hidden" name="userid" value="${user.userid }">
<table border="5" width="95%" height="1000" class=" " >

<tr  align="center"><!--1-->
<td style="width:150px"><b>姓名</b></td>
<td  style="width:200px"><input type="text"  name="username" value="${user.username }" style="height:100%;width:100%"></td>
<td style="width:150px"><b>性别</b></td>
<td style="width:200px"><input type="text"  name="sex" placeholder="请输入性别..." style="height:100%;width:100%"></td>
<td style="width:150px"><b>出身年月</b></td>
<td style="width:180px"><input type="text"  name="birthday" placeholder="请输入出生年月..." style="height:100%;width:100%"></td>
<td rowspan="3" >照片 <br>
(请在尾部添加方便打印)</td>
</tr>

<tr  align="center"><!--2-->
<td><b>籍贯</b></td>
<td><input type="text"  name="jiguan" placeholder="请输入籍贯..." style="height:100%;width:100%"></td>
<td><b>民族</b></td>
<td><input type="text"  name="minzu" placeholder="请输入民族..." style="height:100%;width:100%"></td>
<td><b>政治面貌</b></td>
<td><input type="text"  name="zhengzhimianmao" placeholder="政治面貌：党员或群众" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--3-->
<td><b>婚姻状况</b></td>
<td><input type="text"  name="hunyinzhuangkuang" placeholder="婚姻状况：已婚，未婚" style="height:100%;width:100%"></td>
<td><b>健康状况</b></td>
<td><input type="text"  name="jiankangzhuangkuang" placeholder="健康状况：健康，不健康" style="height:100%;width:100%"></td>
<td><b>手机号码</b></td>
<td><input type="text"  name="userphone" placeholder="请输入手机号码..." value="${user.phone }" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--4-->
<td><b>毕业学校</b></td>
<td><input type="text"  name="biyexuexiao" placeholder="请输入毕业学校..." style="height:100%;width:100%"></td>
<td><b>所学专业</b></td>
<td  colspan="2"><input type="text"  name="zhuanye" placeholder="请输入所学专业..." style="height:100%;width:100%"></td>

<td><b>学历</b></td>
<td><input type="text"  name="xueli" placeholder="请输入学历..." style="height:100%;width:100%"></td>
</tr>

<tr  align="center"><!--7-->
<td rowspan="6"><b>工作履历</b></td>
<td colspan="2"><b>起止年月</b></td>

<td colspan="2"><b>在何单位</b></td>

<td colspan="2"><b>任何职务</b></td>

</tr>

<tr  align="center"><!--8-->

<td colspan="2"><input type="text"  name="qizhinianyue" placeholder="工作起止年月，下同" style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanwei" placeholder="请输入工作地点，下同" style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwu" placeholder="请输入担任过的职务，下同" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--9-->

<td colspan="2"><input type="text"  name="qizhinianyuea"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweia"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwua" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--10-->

<td colspan="2"><input type="text"  name="qizhinianyueb"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweib"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwub" style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--11-->

<td colspan="2"><input type="text"  name="qizhinianyuec"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweic"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwuc"  style="height:100%;width:100%"></td>

</tr>

<tr  align="center"><!--12-->

<td colspan="2"><input type="text"  name="qizhinianyued"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="zaihedanweid"  style="height:100%;width:100%"></td>

<td colspan="2"><input type="text"  name="renhezhiwud"  style="height:100%;width:100%"></td>

</tr>


<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>求职意向</b></td>
<tr  align="center"><!--5-->
<td><b>目标职位</b></td>
<td><input type="text"  name="mubiaozhiwei" placeholder="请输入你想应聘的岗位..." style="height:100%;width:100%"></td>
<td><b>工作性质</b></td>
<td colspan="2"><input type="text"  name="gongzuoxingzhi" placeholder="全职或兼职" style="height:100%;width:100%"></td>

<td><b>邮箱</b></td>
<td><input type="text"  name="youxiang" placeholder="请输入邮箱..." style="height:100%;width:100%"></td>
</tr>



<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>项目介绍</b></td>

<tr  align="center" ><!--13-->
<td  ><b>项目名称</b></td>
<td colspan="6" ><input type="text"  name="xiangmumingcheng" placeholder="请输入某个项目名称..." style="height:100%;width:100%"></td>

<tr  align="center" ><!--13-->
<td  ><b>开发环境</b></td>
<td colspan="6" ><input type="text"  name="kaifahuanjing" placeholder="请输入项目开发环境..." style="height:100%;width:100%"></td>

<tr  align="center" ><!--13-->
<td ><b>项目描述</b></td>
<td colspan="6"  ><input type="text"  name="xiangmumiaoshu" placeholder="请描述该项目..." style="height:100%;width:100%"></td>
<tr  align="center" ><!--13-->
<td  ><b>功能模块</b></td>
<td colspan="6" ><input type="text"  name="gongnengmokuai" placeholder="请描述项目功能..." style="height:100%;width:100%"></td>
</table>
<center><div style="width:11">
<input id="file-0a" class="file" name="file" type="file"  data-min-file-count="1"   >
<input id="touxiang" name="photo"  type="hidden">
</div></center>
<center><button type="button" class="btn btn-default btn-success" onclick="login()">提交</button> <button type="reset" class="btn btn-warning">重置</button></center>
</form>
<script type="text/javascript">
$('#file-0a').fileinput({
    language: 'zh',
   	
    uploadUrl: '${pageContext.request.contextPath}/userController/uploadMultipleFile.do',
    allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash']
});

$('#file-0a').on('fileuploaded', function(event, data, previewId, index) { 

	 var response = data.response;
      //alert(response)
	 $("#touxiang").val(response.url);
     
   });
$('#file-0a').on('fileerror', function(event, data) {
	alert("失败");
   });


function login() {
	
    $.ajax({
    //几个参数需要注意一下
        type: "POST",//方法类型
        dataType: "json",//预期服务器返回的数据类型
        url: "<%=request.getContextPath()%>/resumecontroller/addresume.do",
        data: $('#addresume').serialize(),
        success: function (result) {
            alert("新增成功");
        },
        error : function() {
            alert("异常！");
        }
    });
}


</script>


</body>
</html>