<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    *{ margin:0px; padding: 0px;}
    .all{ width: 195px;margin: 0px auto;  }
    .text  {margin-top:0px; border: 0px solid black; height: 85px; overflow: hidden;}
    .text li{ list-style:none; text-align: center; height:30px; line-height:30px; border-bottom: 1px dashed #CCCCCC; }

    .alll{ width: 195px;margin: 0px auto;  }
    .textt  {margin-top:0px; border: 0px solid black; height: 85px; overflow: hidden;}
    .textt li{ list-style:none; text-align: center; height:30px; line-height:30px; border-bottom: 1px dashed #CCCCCC; }
	.login-dialog .modal-dialog {
                width: 1030px;
                height: 1100px;
            }
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

	<!-- 滚动插件 -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(document).ready(function() {
			var marginTop = 0;
			var bool = false;
			setInterval(function() {
				if (bool)
					return;//判断运行和停止
				$(".text li:first").animate({
					marginTop : marginTop--
				}, 10, function() {
					if (!($(this).is(":animated"))) { //判断是否有一个动画节点
						if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
							$(this).css("margin", "0");
							$(this).appendTo($(".text")); //把第一个节点移到ul后面
							marginTop = 0; //重新设置移动数值
						}
					}
				});
			}, 100);
			$(".text").mouseover(function() { //li鼠标移入，停止移动
				bool = true;
			});
			$(".text").mouseout(function() {
				bool = false;
			});

		});
		$(document).ready(function() {
			var marginTop = 0;
			var bool = false;
			setInterval(function() {
				if (bool)
					return;//判断运行和停止
				$(".textt li:first").animate({
					marginTop : marginTop--
				}, 10, function() {
					if (!($(this).is(":animated"))) { //判断是否有一个动画节点
						if ((-marginTop) >= $(this).height()) { //判断移出位置是否超过高度
							$(this).css("margin", "0");
							$(this).appendTo($(".textt")); //把第一个节点移到ul后面
							marginTop = 0; //重新设置移动数值
						}
					}
				});
			}, 100);
			$(".textt").mouseover(function() { //li鼠标移入，停止移动
				bool = true;
			});
			$(".textt").mouseout(function() {
				bool = false;
			});

		});
	</script>
	<!-- 上边时滚动咨询和热门招聘的脚本 -->



	<!-- 左侧浮动广告 -->
	<div
		style="top: 315px; position: fixed; _position: absolute; _top: expression(eval(document.documentElement.scrollTop) +115+'px'); left: 50%; margin-left: -568px; width: auto; height: auto; display: block;">
		<a ref="nofollow" style="display: block;"
			href='http://cnt.zhaopin.com/Market/whole_counter.jsp?sid=121128399&site=PCm_leftmove&url=xiaoyuan.zhaopin.com/qiuzhiganhuo?id=80002'
			onmousedown="return AdsClick(9718,163620)" target="_blank"><img
			style="border: 1px solid #8c8481;"
			src="//img00.zhaopin.cn/logos/20180321/p.jpg" width="65" height="185"
			alt="Zhaopin.com(beijing)招聘信息"></a> <a ref="nofollow"
			style="display: block; margin-top: 3px;"
			href='https://xiaoyuan.zhaopin.com/zhuanti/first2018/index.html?sid=121126879&site=18lb'
			onmousedown="return AdsClick(9718,163622)" target="_blank"><img
			style="border: 1px solid #8c8481;"
			src="//img00.zhaopin.cn/logos/20180320/zuoce.jpg" width="65"
			height="185" alt="第十季就业有位招聘信息"></a>
	</div>
	<!--NY2011_ZHAOPININDEX_TONGLANHEADER Success end 我是分割线---------我是分割线--------我是分割线-------我是分割线----------------------------   -->
	<!-- 第一栏   分割线---------- -->
	<!-- 左侧DIV -->
	<div
		style="background-color: blue; height: 290px; width: 50%; float: left;padding:20px;background:url('<%=request.getContextPath()%>/1467862478891317.jpg') no-repeat ;background-size:670px 180px;">

	</div>
	<!-- 右侧DIV -->
	<div style="height:100px; width: 50%; float: left;margin-left: -100px;">
		<iframe allowtransparency="true"
			src="http://i.tianqi.com/index.php?c=code&id=2" width="100%"
			height="100%" marginwidth="0" marginheight="0" hspace="0" vspace="0"
			frameborder="0" scrolling="no" charset="GBK"></iframe>
	</div>

	<!-- 第二栏   分割线------------>
	<div
		style="width: 594px; height: 110px; top: 105px; position: fixed; _position: absolute; left: 50%; margin-left: -80px;">
		<div class="all" style="float:left;width:50%;height:100%">
		<center>热点资讯</center>
			<ul id="scroll2" class="text">
            
            <li>
                <a href="http://suo.im/1MbtSM" title="2018新媒体招聘节" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice1')" target="_blank">2018新媒体招聘节</a>
            </li>
            <li>
                <a href="http://suo.im/1kMjrc" title="为什么我们更喜欢看到“对方正在输入”？| 职场36计" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice2')" target="_blank">为什么我们更喜欢看到“对方正在输入</a>
            </li>
            <li>
                <a href="http://suo.im/2ACzKO" title="工资不如烤冷面大妈 ，为什么还要上大学？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice3')" target="_blank">工资不如烤冷面大妈 ，为什么还要上</a>
            </li>
            <li>
                <a href="http://suo.im/XdIIL" title="54%白领不满3年就跳槽，你怎么看？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice4')" target="_blank">54%白领不满3年就跳槽，你怎么看？</a>
            </li>
            <li>
                <a href="http://suo.im/pxHq" title="年龄恐慌的4个小故事，你中招了吗？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice5')" target="_blank">年龄恐慌的4个小故事，你中招了吗？</a>
            </li>
            <li>
                <a href="http://suo.im/4mHZtN" title="3个实习生心态阻碍你月薪过万 | 职场36计" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice6')" target="_blank">3个实习生心态阻碍你月薪过万 | </a>
            </li>
            <li>
                <a href="http://suo.im/2TAO3c" title="素颜的都是菜鸟，化妆的才是职场白骨精 | 职场36计" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice7')" target="_blank">素颜的都是菜鸟，化妆的才是职场白骨</a>
            </li>
            <li>
                <a href="http://suo.im/4bedcM" title="加薪，是不是非得跳槽不可？| 职场36计" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice8')" target="_blank">加薪，是不是非得跳槽不可？| 职场</a>
            </li>
            <li>
                <a href="https://0x9.me/yjaUw" title="今天我们谈职场大女主，到底在谈些什么？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice9')" target="_blank">今天我们谈职场大女主，到底在谈些什</a>
            </li>
            <li>
                <a href="http://dwz.cn/7wDY6q" title="“那么拼命干什么？最后还不是要嫁人”" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice10')" target="_blank">“那么拼命干什么？最后还不是要嫁人”</a>
            </li>
            <li>
                <a href="http://dwz.cn/7vydVp" title="跳槽问你为啥离职，这么回答就对了 | 职场36计" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice11')" target="_blank">跳槽问你为啥离职，这么回答就对了 </a>
            </li>
            <li>
                <a href="http://dwz.cn/7v2YIz" title="那些住在公司附近的人，最后都怎么样了？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice12')" target="_blank">那些住在公司附近的人，最后都怎么样</a>
            </li>
            <li>
                <a href="https://0x9.me/JiS5X" title="我月薪一万，要和混吃等死的男朋友分手吗？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice13')" target="_blank">我月薪一万，要和混吃等死的男朋友分</a>
            </li>
            <li>
                <a href="https://dwz.mn/Ludt" title="“网游让我儿子上不了大学” 网游：这锅我不背！" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice14')" target="_blank">“网游让我儿子上不了大学” 网游：</a>
            </li>
            <li>
                <a href="https://0x9.me/frjM3" title="7岁男孩儿10W存款： 多少人一出生就输了" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice15')" target="_blank">7岁男孩儿10W存款： 多少人一出</a>
            </li>
            <li>
                <a href="https://0x9.me/LCVp5" title="为什么大家越来越不喜欢过年回家？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice16')" target="_blank">为什么大家越来越不喜欢过年回家？</a>
            </li>
            <li>
                <a href="https://0x9.me/J5Emf" title="刚入职领导对我各种不满意，该辞职吗？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice17')" target="_blank">刚入职领导对我各种不满意，该辞职吗？</a>
            </li>
            <li>
                <a href="http://dwz.cn/7moZpd" title="北大学生拉黑父母六年：中国父母的爱之殇" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice18')" target="_blank">北大学生拉黑父母六年：中国父母的爱</a>
            </li>
            <li>
                <a href="https://0x9.me/W2x4k" title="“取悦”年轻人的公司最后都怎么样了？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice19')" target="_blank">“取悦”年轻人的公司最后都怎么样了？</a>
            </li>
            <li>
                <a href="http://dwz.cn/7laelq" title="没瘦10斤，为什么猪猪女孩还在吃素？" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice20')" target="_blank">没瘦10斤，为什么猪猪女孩还在吃素？</a>
            </li>
            <li>
                <a href="http://dwz.cn/7kA2qS" title="离37岁还有一个月，我被公司辞退了" onmousedown="return AdsClick(121111550,'new_zpindex_zhaopinservice21')" target="_blank">离37岁还有一个月，我被公司辞退了</a>
            </li>

          </ul>
		</div>
		
		<div class="alll" style="float:left;width:50%;height:100%">
		<center><font>热门招聘</font></center>
			<ul id="hotjob" class="textt">
			</ul>
		</div>
		
	</div>
	
	

	<!-- 第三栏   分割线------------>
	<div id="showGuanggao"
		style="width: 1000px; height: 1080px; top: 215px; position: fixed; _position: absolute; left: 50%; margin-left: -500px;">
		
		
		</div>



<div class="modal-dialog" style="width:1050px;"></div>

<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"<%=request.getContextPath()%>/jobController/queryHotJobs.do",
			//data:"",
			type:"post",
			datatype:"json",
			async:false,
			success:function (pager){
				tableHtml(pager)
			},
			error:function(){
				alert("查询出错！！！")
			}				
		})	
		
		
		
		//主页广告位查询
		$.ajax({
			url:"<%=request.getContextPath()%>/ggController/guanggaolist.do",
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
	
	
	function tableHtml(pager){
		var tr="";
		pager=eval("("+pager+")");
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].companyid)
		tr+="<li><a href='#' title='"+pager[i].jname+"("+pager[i].comname+")' class='easyui-tooltip' onclick='chaxun("+pager[i].jid+")'>"   +pager[i].jname+    "("+pager[i].comname+")</a></li>";
	}
		$("#hotjob").html(tr);
	} 
	
	function chaxun(jid){
		//alert(jid)
		BootstrapDialog.show({
			   title:'详情',
			   cssClass: 'login-dialog',
               message: $('<div></div>').load('<%=request.getContextPath()%>/jobController/queryCompany.do?id='+jid),
               buttons: [{
                   label: '关闭',
                   action: function(dialog) {
                       //更改弹框标题
                       BootstrapDialog.closeAll();
                   }
               }]
           });
			
	}
	
	
	function guanggaoHtml(pager){
		//alert(pager)
		var count=0;
		var tr="";
		pager=eval("("+pager+")");
		//alert(pager)
	for (var i = 0; i < pager.length; i++) {
		//alert(pager[i].url)
		tr+="<img src='"+pager[i].url+"' position='top' class='easyui-tooltip' showDelay='800' title='点击查看公司详细信息。'  onclick='xinxi(\""+pager[i].comid+"\",\""+pager[i].comname+"\",\""+pager[i].biaoid+"\")' width='226px' height='100px'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
		count++;
			if(count%4==0){
				tr+="<br/>"
			}
		}
		$("#showGuanggao").html(tr);
		//alert(tr)
	}
	
	
	
	function xinxi(comid,comname,biaoid){
	
		//alert(comid)
		//alert(comname)
		//alert(biaoid)
		BootstrapDialog.show({
			   title:comname,
			   cssClass: 'login-dialog',
            message: $('<div></div>').load('<%=request.getContextPath()%>/ggController/companyjob.do?id='+comid),
            buttons: [{
                label: '关闭',
                action: function(dialog) {
                    //更改弹框标题
                    BootstrapDialog.closeAll();
                }
            }]
        });
	}
		
	
</script>
</body>
</html>
