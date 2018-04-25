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



<c:forEach items="${resume}" var="resume" >
 <center><h1>${resume.resumename }</h1></center>
 	
<table border="5" width="95%" height="1000"  >

<tr  align="center"><!--1-->
<td style="width:150px"><b>姓名</b></td>
<td  style="width:200px">${resume.username }</td>
<td style="width:150px"><b>性别</b></td>
<td style="width:200px">${resume.sex }</td>
<td style="width:150px"><b>出身年月</b></td>
<td style="width:180px"> ${resume.birthday }</td>
<td rowspan="3" style="width:180px;height:120px" ><img src="${resume.photo}" style="height:100%;width:100%" >
</td>
</tr>

<tr  align="center"><!--2-->
<td><b>籍贯</b></td>
<td> ${resume.jiguan }</td>
<td><b>民族</b></td>
<td> ${resume.minzu }</td>
<td><b>政治面貌</b></td>
<td> ${resume.zhengzhimianmao }</td>

</tr>

<tr  align="center"><!--3-->
<td><b>婚姻状况</b></td>
<td> ${resume.hunyinzhuangkuang }</td>
<td><b>健康状况</b></td>
<td> ${resume.jiankangzhuangkuang }</td>
<td><b>手机号码</b></td>
<td>${resume.userphone }</td>

</tr>

<tr  align="center"><!--4-->
<td><b>毕业学校</b></td>
<td> ${resume.biyexuexiao }</td>
<td><b>所学专业</b></td>
<td  colspan="2"> ${resume.zhuanye }</td>

<td><b>学历</b></td>
<td> ${resume.xueli }</td>
</tr>

<tr  align="center"><!--7-->
<td rowspan="6"><b>工作履历</b></td>
<td colspan="2"><b>起止年月</b></td>

<td colspan="2"><b>在何单位</b></td>

<td colspan="2"><b>任何职务</b></td>

</tr>

<tr  align="center"><!--8-->

<td colspan="2"> ${resume.qizhinianyue }</td>

<td colspan="2"> ${resume.zaihedanwei }</td>

<td colspan="2"> ${resume.renhezhiwu }</td>

</tr>

<tr  align="center"><!--9-->

<td colspan="2"> ${resume.qizhinianyuea }</td>

<td colspan="2">  ${resume.zaihedanweia }</td>

<td colspan="2">${resume.renhezhiwua }</td>

</tr>

<tr  align="center"><!--10-->

<td colspan="2">${resume.qizhinianyueb }</td>

<td colspan="2">${resume.zaihedanweib }</td>

<td colspan="2">${resume.renhezhiwub }</td>

</tr>

<tr  align="center"><!--11-->

<td colspan="2">${resume.qizhinianyuec }</td>

<td colspan="2">${resume.zaihedanweic }</td>

<td colspan="2">${resume.renhezhiwuc }</td>

</tr>

<tr  align="center"><!--12-->

<td colspan="2">${resume.qizhinianyued }</td>

<td colspan="2">${resume.zaihedanweid}</td>

<td colspan="2">${resume.renhezhiwud }</td>

</tr>


<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>求职意向</b></td>
<tr  align="center"><!--5-->
<td><b>目标职位</b></td>
<td> ${resume.mubiaozhiwei }</td>
<td><b>工作性质</b></td>
<td colspan="2"> ${resume.gongzuoxingzhi }</td>

<td><b>邮箱</b></td>
<td> ${resume.youxiang }</td>
</tr>



<tr  align="center" bgcolor="#868686"><!--13-->
<td colspan="7" ><b>项目介绍</b></td>

<tr  align="center" ><!--13-->
<td  ><b>项目名称</b></td>
<td colspan="6" >${resume.xiangmumingcheng }</td>

<tr  align="center" ><!--13-->
<td  ><b>开发环境</b></td>
<td colspan="6" > ${resume.kaifahuanjing }</td>

<tr  align="center" ><!--13-->
<td ><b>项目描述</b></td>
<td colspan="6"  >  ${resume.xiangmumiaoshu }</td>
<tr  align="center" ><!--13-->
<td  ><b>功能模块</b></td>
<td colspan="6" > ${resume.gongnengmokuai }</td>
</table>
</c:forEach>
</body>
</html>