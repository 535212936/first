<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language"content="zh-cn"/>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="" />
<title>网才积分商城</title>

<link rel="stylesheet" type="text/css" href="images/normalize.css" />
<link rel="stylesheet" type="text/css" href="images/layout.css" />
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="js/header.js"></script>
<script type="text/javascript" src="js/quwan-plugin.js"></script>
<style>
.col1 {width: 233px; height: 233px}
.col1 img {width: 233px; height: 233px}
.col2 {width: 478px; height: 478px}
.col2 img{width: 478px; height: 478px; margin-left: 0px;}
.col3 {width: 478px; height: 233px}
.col3 img {width: 478px; height: 233px}
.col4 {width: 233px; height: 478px}
.col4 img {width: 233px; height: 478px}
</style>
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
	src="${pageContext.request.contextPath}/jquery/bootstrap-select-1.12.4/dist/js/i18n/defaults-zh_CN.min.js"></script>

<body>
<input type="hidden" id="userid"  value="${companyid}">

<style>.nav a.home {background: url("images/header_logo_1.png") no-repeat center;}</style>
<div id="header">
  <ul class="nav">
    <li id="home"><a class="home" href="jifenshangcheng.jsp"></a></li>
    
  </ul>
  
  <dl class="funcs">
 
  
    
    <dd class="funcs_dd">
    
     <a class="basket navitem" href="<%=request.getContextPath()%>/user_cart.jsp" title="购物车" style=""> <span id="gouwuchegeshu" style="display: block;border-radius:50%;background: red;width: 20px;height:20px;text-align: center;line-height: 20px"></span></a>
      <div class="cart_detail dropdown">点击查看购物车</div>
    </dd>
  </dl>
</div>
<ul id="tags">
   
  <li><a href="cha1.jsp" target="3">日用百货</a></li>
  <li><a href="cha2.jsp" target="3">美食饮品</a></li>
  <li><a href="cha3.jsp" target="3">虚拟商品</a></li>
  <li><a href="cha4.jsp" target="3">电子产品</a></li>
  <li><a href="cha5.jsp" target="3">汽车用品</a></li>
  <li><a href="cha6.jsp" target="3">医药品</a></li>
  <li><a href="cha7.jsp" target="3">图书</a></li>
  <li><a href="cha8.jsp" target="3">酒类</a></li>
  <li><a href="cha9.jsp" target="3">营养保健</a></li>
  <li><a href="cha10.jsp" target="3">玩具</a></li>
  <li><a href="javascript:void(0)" onclick="fanhui()">返回</a></li>
  
 
</ul>


<div class="main">
  <div class="heading" id="headingW" style="position:relative;">
    <h1>欢迎来到网才积分购物系统</h1>
    <p>我们一直倡导优质生活理念，并秉承“尊重消费者”的品牌精神，深入世界各地，严格把关所有商品的产地、工艺、原材料，致力于为消费者提供真正"优质、创意"的产品！</p>
  </div>
	<div id="showGuanggao" >
		 
	</div>
<div class="modal-dialog" style="width:1050px;"></div>
</div>
		



<div id="footer" style=" margin-top:10px">
  <div class="wraps">
    <ul>
      <li><a href="#">关于我们</a></li>
      <li><a href="#">联系我们</a></li>
      <li><a href="#">新手指南</a></li>
      <li><a href="#">配送方式</a></li>
      <li><a href="#">如何付款</a></li>
      <li><a href="#">售后服务</a></li>
      <li><a class="join" href="http://www.MinCheng.cn/" target="_blank">连锁加盟</a></li>
    </ul>
    <p>&copy;龙盾科技 - 版权所有 京ICP备171001号 | <a  target="_blank">经营性ICP许可证：京A8-6666</a></p>
  </div>
</div>
<script type="text/javascript">
	$(function(){
		
		var userid=$("#userid").val();
		var ccc=0;
		//查询购物车个数
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/togetgesshu.do",
			type:"post",
			data:{"id":userid},
			datatype:"json",
			async:false,
			success:function(geshu){
			ccc=geshu.substring(1, geshu.length-1)
			
				
				$("#gouwuchegeshu").html("<font color='white'>"+ccc+"<font>");
			},
			error:function(){
				alert("查询出错！！！")
			}	
			
			
			
		})
	
		
		
		//主页广告位查询
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/goodslist5.do",
			//data:"",
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				guanggaoHtml(pager)
			},
			error:function(){
				alert("查询出错！！！")
			}				
		})
		
		
	})
	
	

	
	
	function guanggaoHtml(pager){
		//alert(pager)
		var count=0;
		var tr="";
		pager=eval("("+pager+")");
		//alert(pager)
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].simage)
		tr+="<div style='float:left' ><img src='"+pager[i].simage+"'  width='200px' height='200px' title='点击查看详细信息' onclick='chakanxx("+pager[i].sid+",\""+pager[i].sname+"\")' >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br><span><font size='1'>"+pager[i].sname+"</font></span><br><span><font size='1'>价格："+pager[i].sprice+"积分 </font></span></div>"
	
		}
		$("#showGuanggao").html(tr);
		//alert(tr)
	}
	
	
	
	function chakanxx(sid,sname){
		
		BootstrapDialog.show({
			   title:sname,
			   cssClass: 'login-dialog',
            message: $('<div></div>').load('<%=request.getContextPath()%>/goodsController/selectbyid.do?id='+sid),
            buttons: [{
                label: '关闭',
                action: function(dialog) {
                    //更改弹框标题
                    BootstrapDialog.closeAll();
                }
            }]
        });
		
		
	}
	function fanhui(){
		history.go(-1);
	}
	function shuaxin(){
		location.reload();
	}
		
	
</script>
</body>
</html>