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
<style type="text/css">
  .navbar{
  background:#049cdb;
  height:90px;
 margin-left:16px;
 margin-right:16px;
 
  }
  .group{
 width:270px;
  
  }
  .layout{
  padding-top: 90px;
  position: relative;
  
  }

</style>






</head>

<body style="background: url('<%=request.getContextPath()%>/images/f5c8d0f19a2.jpg');">

<nav class="navbar navbar-fixed-top ">
  <h1><font color="white" >好好工作,因为工作好好</font></h1>
</nav>


<div class="container-fluid  layout">
<div class="row">
  <div class="col-md-3">

<div id="tree"></div>

  
  </div>
  <div class="col-md-9">
  <ul id="myTab" class="nav nav-tabs"></ul>
  <div class="tab-content"></div>
  

  
  </div>
</div>

</div>

<script type="text/javascript">

$('#tree').treeview(
        {
            data:getTreeData(),
        /* onNodeCollapsed:function(event,node){
                alert("折叠了");
            },
           onNodeExpanded :function(event,node){
               alert("打开了");
           },  */
            onNodeSelected:function(event,node){
                //alert(node.href)
            //  alert(node.text);
                if(node.url!=null && node.url!=""){
                	addTabs11(node.text,node.url);
                        
                }
                
            }
        })
function addTabs11(titleStr,urlStr){//标题和路径
    		$.ajax({
    			url:"<%=request.getContextPath()%>/"+urlStr,
    			success:function(info){	//info返回的是整个页面
    				$.addtabs.add({
    	                id:titleStr,
    	                title:titleStr,
    	                content:info,
    	        	})
    			}		
    		})
         }
         
function getTreeData(){
    var tree_data = "";
    $.ajax({
        url:"<%=request.getContextPath()%>/treeController/selectTreeList.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data){
            tree_data = data;
            
        },
        error:function(){
            alert("查询出错");
        }
    });
    return tree_data;
}
        
        
        
        
        
        
        
        
        
        
        


</script>



















</body>
</html>