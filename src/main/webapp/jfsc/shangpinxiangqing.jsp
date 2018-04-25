<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
html,body{
    height: 100%;
    font-size: 15px;
    color: black;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    user-select:none;
    -webkit-user-select: none;/*��ֹ�û�ѡ��ҳ���е�����*/
}
.tb{
    width: 1000px;
    border: 3px solid #DDDDDD;
    border-radius: 15px;
    box-shadow: 2px 3px 5px #DDDDDD;
}
.tb tr{
    background: #F0F0E1;
    height: 30px;
}
.tb tr td{
    border: 1.5px solid #FFFFFF;
    text-align: center;

}
.tb tr th{
    border: 1.5px solid #FFFFFF;
    background: #888888;
    color: white;
    border-top:none;
}
.tb tr th:nth-child(1){
    border-top-left-radius:15px;
    border-left: none;
    border-top:none;
}
.tb tr th:last-child{
    border-top-right-radius:15px;
    border-right: none;
}
.tb tr:nth-child(1){

    background:#99B3FF;

}
.tb tr:nth-child(2n+1){
    background:#DDDDDD;
}
.tb tr:hover{
    background:#DDDDDD;
    opacity: 0.6;

}
.tb tr:nth-child(1):hover{
    border: 1.5px solid #FFFFFF;
    opacity: 1;
}
.tb tr:last-child td:nth-child(1){

    border-bottom-left-radius:15px;
}
.tb tr:last-child td:last-child{

    border-bottom-right-radius:15px;
}
</style>


</head>

<style>



   	.login-dialog .modal-dialog {
                width: 1000px;
            }
</style>

<body>
<span>

<input type="hidden" id="userid"  value="${companyid}">
<input type="hidden" id="goodsid"  value="${goods.sid}">
</span>
<div class="main detail">
  <div class="detai_topbox">
   

    
    <div class="informations">
      <div class="pic">
        <div class="wrapper">
          
          
        </div>
        <ul class="pic_index">
          <img src="${goods.simage}"  width="400px" height="400px"/>
          
        </ul>
      </div>
      <div class="infor">
        <h1>${goods.sname}</h1>
        <dl class="sale">
         <span><font size="5" color="red"> ${goods.sprice} 积分</font></span>
        </dl>
        <font size="3"color="blue">
		龙盾承诺
		</font>
        <p class="purchasing">
		<i>
		该积分商城由龙盾科技与米橙电子合作运营，本平台销售并发货的商品，由平台提供发票和相应的售后服务。请您放心购买！
		 </i>
		 <br>
		<i>
		因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
		 </i>

        </p>
        
        <div  id="paykey_new">
          <ul>
            <li>
              <dl>
                <dt>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</dt>
                <dd><span>${goods.sid}</span></dd>
              </dl>
            </li>
    
         
          </ul>
          <div class="goods_but">
            <div style="height:38px;">
            <a class="buy_btn" href="javascript:;" onclick="fangrugouwuche()">放入购物车</a>

            </div>
         
          </div>
          <div class="cart_pop"></div>
          <ul class="Pref">
            <li><i></i><div>暂无优惠信息！</div></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  
  <div class="box" id="main_l" style="margin-bottom:0;">
    <ul class="select_bar">
      <li class="current" id="all">商品详情</li>
      <li id="comment"></li>
    </ul>
  </div>
  <div class="product_mess">
    <div class="mess_box">
      <div class="gn_decri">
        <p>${goods.sname}</p>
      </div>
      <div class="cs_box">
        <ul class="csList">
         	<span>商品简介：${goods.sinfo}</span>
		
        </ul>
      </div>
    </div>
  </div>
  
  <!-- 商品评论详情 -->
  
	<table border="0" width="100%" class="tb">
			<thead id="tabletitle">
				<tr>				
					<td colspan="2"><font color="#46A3FF">评论信息</font></td>
				</tr>			
			</thead>
			<tbody id="showJobInfo">
			</tbody>
			</table>


</div>
<script type="text/javascript">
$(function(){
	var goodsid=$("#goodsid").val();
		//alert(goodsid)
	$.ajax({
		url:"<%=request.getContextPath()%>/goodsController/queryCommentByGoodid.do",
		data:{"id":goodsid},
		type:"post",
		datatype:"json",
		async:false,
		success:function (pager){
			tableHtml(pager)
		},
		error:function(){
		}				
	})		
})


function fangrugouwuche(){
	var userid=$("#userid").val();
	var goodsid=$("#goodsid").val();
	
	if(confirm('确定加入购物车吗')){
		$.ajax({
			url:"<%=request.getContextPath()%>/goodsController/addredisList.do",
			data:{"id":userid,"gid":goodsid},
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



function tableHtml(pager){
	var tr="";
	pager=eval("("+pager+")");
	//alert(pager)
for (var i = 0; i < pager.length; i++) {
	//alert(pager[i].companyid)
	tr+="<tr>"
		+"<td>"+"匿名用户"+"</td>"
		+"<td>"+pager[i].comment+"</td>"
}
	$("#showJobInfo").html(tr);
} 
 





</script>

</body>
</html>