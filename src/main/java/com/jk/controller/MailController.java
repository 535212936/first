/** 
 * <pre>项目名称:ssm-jobs 
 * 文件名称:MailController.java 
 * 包名:com.jk.controller 
 * 创建日期:2018年3月29日上午11:10:19 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.controller;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Resumeb;
import com.jk.service.resumeservice;

import common.util.EmailUtil;

/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：MailController    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月29日 上午11:10:19    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月29日 上午11:10:19    
 * 修改备注：       
 * @version </pre>    
 */
@RequestMapping("/mailController")
@Controller
public class MailController {
	
	@Autowired
	private resumeservice  resumeservice;
	
	/**
	 * <pre>selectMailName(先根据id查出来邮箱)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月29日 上午11:38:44    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月29日 上午11:38:44    
	 * 修改备注： 
	 * @param id
	 * @return</pre>
	 */
	@RequestMapping("/selectMailName")
	@ResponseBody
	public Resumeb selectMailName(Integer id){
		
		Resumeb resumeb = resumeservice.selectMailName(id);
		
		return resumeb;
	 }
	 
	/**
	 * <pre>getEmpEmail(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月29日 下午10:06:09    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月29日 下午10:06:09    
	 * 修改备注： 
	 * @param to 发送人
	 * @param subject 主题
	 * @param html 邮件
	 * @return</pre>
	 */
	@RequestMapping("/getEmpEmail")
	@ResponseBody
	public String getEmpEmail(String to, String subject, String html){
		
		
		try {
			
			EmailUtil.sendHtmlMail(to, subject, html);
			
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//"尊敬的先生/女士,你好!你的简历符合我们公司的面试要求,请与明天早上8点-12点来我公司面试,面试地点是北京西三旗北京明园大学,来时携带简历,联系电话:袁经理:15600020297"	
	//	"2623860023@qq.com", "helloword", "啊哈哈哈,我喜欢你哦!"	
		
		
		return "success";
		
		
	}

	
	
	
	
	
	
	
	
	

}
