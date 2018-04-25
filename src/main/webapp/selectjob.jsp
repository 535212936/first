<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="panel panel-primary">
   
    <table class="table" id="file-tables" border="1"></table>
    <div id="modal-dialog"></div>
</div>
  
<script type="text/javascript">


	
     $("#file-tables").bootstrapTable({
    	 url:"<%=request.getContextPath()%>/jobController/selectjobandresume.do",
    	 striped:true,
    	 search:true,
    	 searchOnEnterKey:true,
    	 
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
   		        field: 'companyname',
   		        title: '公司名称'
   		    }, {
   		        field: 'jaddress',
   		        title: '公司地址'
   		    }, {
   		        field: 'jname',
   		        title: '招聘岗位'
   		    }, {
   		        field: 'jyaoqiu',
   		        title: '应聘要求'
   			 }, {
		        field: 'jhot',
		        title: '岗位热度',
   
   		 	}, {
		        field: '',
		        title: '操作',
		        formatter:function(value,row,index){
	   		    	
		        	var anniu="<input type='button' value='投递简历' onclick='chakanjob(\""+row.companyid+"\")'>";
		        	
	   		    	 return anniu;
	   		     }
   		 	
		 
   		    }]
    
    	 
     })
      
     function chakanjob(companyid){
		
    		 BootstrapDialog.show({
  			   title:'请选择投递的简历',
  			   cssClass: 'login-dialog',
                 message: $('<div></div>').load('<%=request.getContextPath()%>/resumecontroller/selectresumetoudi.do?companyid='+companyid),
                 buttons: [{
                     label: '关闭',
                     action: function(dialog) {
                         //更改弹框标题
                         BootstrapDialog.closeAll();
                     }
              	   },{
                     label: '确定投递',
                     action: function(dialog) {
                  	   $.ajax({
     	            		url:"<%=request.getContextPath()%>/resumecontroller/addrecom.do",
     	            		type:"post",
     	            		data:$("#toudijianli").serialize(),
     	            		success:function(){
     	            			alert("投递成功");
     	            			BootstrapDialog.closeAll();
     	            		}
     	            	})
                     }
                 }]
             });
	}
     
   </script>  
</body>
</html>