<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="" />
<title>MinCheng米橙电子 - 严格甄选，为消费者提供真正"优质、创意、低价"的产品！</title>
<meta name="Keywords" content="米橙电子,MinCheng" />
<meta name="Description" content="MinCheng米橙电子一直倡导“优质生活”理念，秉承“尊重消费者”的品牌精神，深入世界各地，严格把关所有商品的产地、工艺、原材料，甄选居家百货、厨房日用品、饮食等各类商品，致力于为消费者提供真正优质、创意、低价的产品！" />
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="icon" type="image/gif" href="images/favicon.gif" />
<link rel="stylesheet" type="text/css" href="images/normalize.css" />
<link rel="stylesheet" type="text/css" href="images/layout.css" />
<link href="images/user.css" rel="stylesheet" type="text/css">
<link href="images/user_cart.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="js/quwan-plugin.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/action.js"></script>

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




</head>
<body>



<form id="redisfrom">
<!-- 登陆的用户ID -->
<input type="hidden" id="userid" value="${companyid}"/><!-- ${companyid} -->
</form>

<div class="main user">
	<button type="button" class="btn btn-info glyphicon glyphicon-refresh" onclick="shuaxin()">
		刷新
	</button>
	<button type="button" class="btn btn-info glyphicon glyphicon-folder-close" onclick="tiaozhuan()">
		已购记录
	</button>
	
	
	
	<div class="top_nav">您当前的位置：<a href="javascript:void(0)" onclick="shouye()">首页</a> <code>&gt;</code> <a a href="javascript:void(0)" onclick="gouwuche()">购物车</a></div>  
    <div class="bodycenter" style="background-color:#fff; height:60px; background:url(images/carstep1.gif) no-repeat left top; ">&nbsp;</div>

<div class="bodycenter" style="background-color:#fff">
<table width="900px">
	<thead>
	<tr>
	  <td align="center"><div><strong>图片</strong></div></td>
	  <td><div><strong>名称 / 编号 / 备注</strong></div></td>
      <td><div><strong>单价</strong></div></td>
	  <td align="center"><div><strong>数量</strong></div></td>
	  <td><div><strong>小计</strong></div></td>
	  <td><div><strong>操作</strong></div></td>
	</tr>
	</thead>
	

	<!-- <tr bgcolor="#FFFFFF" onMouseOut="this.bgColor='#FFFFFF'" onMouseOver="this.bgColor='#FFFF66'" id="Car_Row_2605752">
		图片
	  <td style="border-bottom:1px dashed #E3E3E3;" height="66"><div align="center"><a href="/pdetail.html?pid=247850" target="_blank"><img src="http://www.5jihua.com/upfiles/1710/16/171016172949780581.jpg_250x250.jpg" alt="选购时间：2017/12/9 16:49:00" width="60" height="60" border="0"></a></div></td>
	  
	  
	  名称编号备注
	  <td style="border-bottom:1px dashed #E3E3E3;">
      <div>28CM哈士奇U型枕</div>
      <div>258574</div>
      <div><input id="Yqinput2605752" type="text" size="30" value="" class="yqinput" onFocus="EditYqInput(2605752)" onBlur="UpdateYqInput(2605752)"></div>
      </td>
      
      单价
      <td style="border-bottom:1px dashed #E3E3E3;">
      <div align="right" ><span id="Car_List_price_2605752">11.40</span> 元</div>
      <div align="right" style='display:none'><span id="Car_List_jifen_2605752">0</span> 分</div>
      </td>
      
      
      数量
	  <td style="border-bottom:1px dashed #E3E3E3;">
	  
	  <div class="numdiv"><a href="javascript:void(0);" onClick="numrolld('d',2605752,247850)" class="numrolld_d">-</a>
	  
	  
	  <input id="numinput2605752" type="text" size="5" readonly class="numinput" value="12" >
	  
	  <a href="javascript:void(0);" onClick="numrolld('u',2605752,247850)" class="numrolld_u">+</a></div></td>
	  
	  
	  小计
	  <td style="border-bottom:1px dashed #E3E3E3;">
      <div align="right" ><span id="Car_List_pricet_2605752">136.80</span> 元</div>
      <div align="right" style='display:none;'><span id="Car_List_jifent_2605752">0</span> 分</div>
      </td>
      
      操作
	  <td style="border-bottom:1px dashed #E3E3E3;"><div align="center"><a href="javascript:void(0);" onclick="Car_Del('2605752','one')">删除</a></div></td>
	  
	</tr> -->
	<tbody id="showRedisList">
	</tbody>
	
</table>


<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0" style="border-bottom:1px solid #E3E3E3;">
  <tr>
	<td height="50" bgcolor="#FFFFFF">
    <div style="float:left;text-align:left;font-size:13px;">您的购物车：共<font color="#FF5151"> <span class="se82223 bold13" id="mycar_end_k"></span></font> 件商品</div>
    <div style="float:right;text-align:right;font-size:13px;">花费积分：<font color="#FF5151"><span class="se82223 bold13" id="mycar_end_f"></span></font> 分</div>
    </td>
  </tr>
</table>

<!-- <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0" style="margin-top:10px;">
  <tr>
	<td width="50%" valign="top">
        <div style="text-align:left;line-height:26px;font-size:13px;">优惠活动信息：
		暂无活动
        </div>
	</td>
    <td width="50%" valign="top">
    	<div style="text-align:right;line-height:26px;font-size:13px;">符合您本次订单的优惠：无&nbsp;&nbsp;&nbsp;&nbsp;</div>
    </td>
  </tr>
</table> -->



<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0" style="margin-top:10px;">
  <tr>
	<td width="100%" height="60">
	<a href="javascript:;" onClick="cleanRedis()" class="btn_cartclear">清空购物车</a>
    <a href="javascript:;" class="btn_carttosubmit" onClick="jiesuan()">我选好了，去结算</a>
    <!-- <a href="javascript:;" onclick="window.location.href=getcarbackurl()" class="btn_carttobuy">继续选购商品</a> -->
    </td>
  </tr>
</table>
</div>

</div>





<script type="text/javascript">

	//页面加载时查询根据登陆用户ID查询购物车列表
	$(function(){
		var userid=$("#userid").val();
			//alert(userid)
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/selectredisList.do",
			data:{"id":userid},
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				tableHtml(pager)
			//页面加载时计算商品数量以及总积分
			var count=0;
			var ccount=0;
			pager=eval("("+pager+")");
			for (var i = 0; i < pager.length; i++) {
				count+=pager[i].scount;
				ccount+=pager[i].xiaoji;
		}
		$("#mycar_end_k").html(count);
		$("#mycar_end_f").html(ccount);
			},
			error:function(){
				alert("查询出错！！！")
			}				
		})	
		
		
		
		
	})
	
	//页面加载时间的回掉函数，拼接数据
	function tableHtml(pager){
		var tr="";
		//alert(pager)
		pager=eval("("+pager+")");
		//alert(pager)
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].companyid)
		tr+="<tr>"
			+"<td><center><img src='"+pager[i].simage+"' width='70' height='74'></center></td>"
			+"<td>" +pager[i].sname+"/" +pager[i].sid+ "/" +pager[i].sinfo+ "</td>"
			+"<td>"+pager[i].sprice+"</td>"
			+"<td width='100'><input type='button' value='-' onclick='countdown("+pager[i].sid+","+pager[i].scount+")'/>"+"<input id='numinput2605752' type='text' size='2' readonly  value='"+pager[i].scount+"' >"+"<input type='button' value='+' onclick='countup("+pager[i].sid+","+pager[i].scount+")'/></td>"
			+"<td>"+pager[i].xiaoji+"</td>"
			+"<td width='100'><a href='javascript:void(0);' onclick='deleteredis("+pager[i].sid+")'>删除</a>"
			+"</td>"
			+"</tr>";// pager[i].scount
	}
		$("#showRedisList").html(tr);
	} 
	
	
	//商品数量加一操作
	function countup(sid,scount){
		var userid=$("#userid").val();
		var count = scount+1;
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/updateredisup.do",
			data:{"id":userid,"sid":sid,"scount":count},
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				location.reload();
			},
			error:function(){
				alert("后台出错！！！")
			}				
		})
	}
	//商品数量减一操作
	function countdown(sid,scount){
		var userid=$("#userid").val();
		var count = scount-1;
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/updateredisup.do",
			data:{"id":userid,"sid":sid,"scount":count},
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				location.reload();
			},
			error:function(){
				alert("后台出错！！！")
			}				
		})
	}
	//删除操作
	function deleteredis(sid){
		var userid=$("#userid").val();
		//alert(userid)
		//alert(sid)
		if(confirm("确定要删除吗？删除后不能恢复噢！")){
			$.ajax({
				url:"<%=request.getContextPath()%>/goodsController/deleteredis.do",
				data:{"id":userid,"sid":sid},
				type:"post",
				datatype:"json",
				async:false,
				success:function (pager){
					location.reload();
				},
				error:function(){
					alert("后台出错！！！")
				}				
			})
		}
	}
	
	//if(confirm('确定要清空购物车内的所有商品吗？清空后不能恢复噢！'))
		
	//清空购物车操作
	function cleanRedis(){
		var userid=$("#userid").val();
		if(confirm('确定要清空购物车内的所有商品吗？清空后不能恢复噢！')){
			$.ajax({
				url:"<%=request.getContextPath()%>/goodsController/deleteallredis.do",
				data:{"id":userid},
				type:"post",
				datatype:"json",
				async:false,
				success:function (pager){
					location.reload();
				},
				error:function(){
					alert("后台出错！！！")
				}				
			})
		}
	}
	
	
	//结账操作
	function jiesuan(){
		var count=$("#mycar_end_f").html()
		var userid=$("#userid").val()
		if(count != 0){
			if(confirm('确定要花费'+count+'积分购买所选商品吗？')){
				$.ajax({
					url:"<%=request.getContextPath()%>/goodsController/buygoods.do",
					data:{"id":userid},
					type:"post",
					datatype:"text",
					async:false,
					success:function (pager){	
						//alert(pager)
						//alert(typeof(pager))
						if(pager == "\"1\""){
						alert("购买成功，我们将尽快给您安排发货！")
						location.reload();
						}else if(pager == "\"2\""){
							alert("您的积分余额不足，请充值后在进行购买噢！")
							location.reload();
						}
					},
					error:function(){
						alert("后台出错！！！")
					}				
				})				
			}
		}else{
			alert("您还没有挑选商品噢！");
			return false;
		}
		
		
	}
	
	function tiaozhuan(){
		location.href="<%=request.getContextPath()%>/orderform.jsp"
	}
	
	function shuaxin(){
		location.reload();
	}
	function gouwuche(){
		location.reload();
	}
	function shouye(){
		history.go(-1)
	}

</script>
</body>
</html>
