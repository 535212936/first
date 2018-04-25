<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
   	.login-dialog .modal-dialog {
                width: 1000px;
            }
</style>
<body>

<div class="panel panel-primary">
   
    
    <table class="table" id="file-table" border="1"></table>
    <div id="modal-dialog"></div>
</div>
  
<script type="text/javascript">


	
     $("#file-table").bootstrapTable({
    	 url:"<%=request.getContextPath()%>/resumecontroller/selectresume.do",
    	 striped:true,
    	 search:true,
    	 searchOnEnterKey:true,
    	 //searchText:"大爷，搜我",
    	 showHeader:true,
    	 showColumns:true,
    	 showRefresh:true, 
    	 showToggle:true,
    	 showPaginationSwitch:true,
    	 
    	 paginationHAlign:"left",
    	 pagination: true,		   //开启分页
    	 pageNumber:1,              //初始化加载第几页,默认第1页
         pageSize: 3,               //每页几条数据,超过总条数右下角将没分页
         pageList: [2, 4, 6, 8],    //每页条数,设置为All将展示全部记录,超过总条数底部将不显示条数下拉框
         contentType:"application/x-www-form-urlencoded;charset=UTF-8",	//必须的否则条件查询时会乱码
         sidePagination: "client",  //分页方式:client客户端分页,server服务端分页
        
   		 columns: [{
   		        field: 'resumeid',
   		        title: '编号'
   		    }, {
   		        field: 'resumename',
   		        title: '简历名称'
   		    }, {
   		        field: 'username',
   		        title: '姓名'
   		    }, {
   		        field: 'userphone',
   		        title: '手机号',
   		 	}, {
		        field: '',
		        title: '操作',
		        formatter:function(value,row,index){
		        	//alert(row.resumeid)
	   		    	
		        	var anniu="<input type='button' value='查看详情' onclick='chakan("+row.resumeid+")' ><input type='button' value='修改简历' onclick='updatere("+row.resumeid+")' >";
		        	
	   		    	 return anniu;
	   		     }
   		 	},{
             field: 'photo',
             title: '头像',
             align: 'center',
             formatter: function(value,row,index){
            
             	//alert(row.photo)
                 return "<img  src=' "+row.photo+" ' class='img-rounded' width='74px' height='100px'>";
             }
          
		 
   		    }]
    
    	 
     })
     
     function chakan(resumeid){
		
		BootstrapDialog.show({
			   title:'详情',
			   cssClass: 'login-dialog',
               message: $('<div></div>').load('<%=request.getContextPath()%>/resumecontroller/selectresumeall.do?resumeid='+resumeid),
               buttons: [{
                   label: '关闭',
                   action: function(dialog) {
                       //更改弹框标题
                       BootstrapDialog.closeAll();
                   }
               }]
           });
			
	}
     
     
     function updatere(resumeid){
    	
		BootstrapDialog.show({
			   title:'详情',
			   cssClass: 'login-dialog',
               message: $('<div></div>').load('<%=request.getContextPath()%>/resumecontroller/toupdateresume.do?resumeid='+resumeid),
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