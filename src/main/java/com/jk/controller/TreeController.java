
package com.jk.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Tree;
import com.jk.model.User;
import com.jk.service.TreeService;

/**
 * 
 * <pre>项目名称：ssm-bams    
 * 类名称：TreeController    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月7日 上午11:42:50    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月7日 上午11:42:50    
 * 修改备注：       
 * @version </pre>
 */
@Controller
@RequestMapping("treeController")
public class TreeController {
	
	
	   @Autowired
	   private TreeService treeService;
	   
	
	  @RequestMapping("selectTreeList")
	  @ResponseBody
	  public List<Tree> selectTreeList(){
		  List<Tree> list =null;
		  
		 try {
			 
			 
			list =treeService.selectTreeList();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		  return list;
	  }
	  
	  
	
	
	
	
	  
	  

}
