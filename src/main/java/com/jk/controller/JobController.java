/** 
 * <pre>项目名称:ssm-jobs 
 * 文件名称:JobController.java 
 * 包名:com.jk.controller 
 * 创建日期:2018年3月22日下午4:51:24 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Job;
import com.jk.service.JobService;

/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：JobController    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月22日 下午4:51:24    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月22日 下午4:51:24    
 * 修改备注：       
 * @version </pre>    
 */
@Controller
@RequestMapping("/jobController")
public class JobController {
	
	@Autowired
	private JobService jobService;
	
	
	/**
	 * <pre>queryJob(查询发布职位信息)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午4:58:25    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午4:58:25    
	 * 修改备注： 
	 * @param job
	 * @return</pre>
	 */
	@RequestMapping("/queryPosition")
	@ResponseBody
	public List<Job> queryJob(String companyid){
		List<Job> joblist=	jobService.queryJob(companyid);
		return joblist;
	}
	
	/**
	 * <pre>updateJobUp(把职位从未发布到已发布)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午9:45:29    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午9:45:29    
	 * 修改备注： 
	 * @param jid
	 * @return</pre>
	 */
	@RequestMapping("updateJobUp")
	@ResponseBody
	public String updateJobUp(Integer jid){
		
		jobService.updateJobUp(jid);
		
		return "success";
		
		
		
	}
	
	/**
	 * <pre>updateJobUp(把职位从发布到未发布)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午9:45:29    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午9:45:29    
	 * 修改备注： 
	 * @param jid
	 * @return</pre>
	 */
	@RequestMapping("updateJobDown")
	@ResponseBody
	public String updateJobDown(Integer jid){
		
		jobService.updateJobDown(jid);
		
		return "success";
		
		
		
	}
	/**
	 * <pre>addPosition(新增发布职位)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月23日 下午7:19:22    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月23日 下午7:19:22    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("/addPosition")
	@ResponseBody
	public Object addPosition(Job job){
		jobService.addPosition(job);
		
		return "success";
		
		
	}
	
	/**
	 * <pre>deletePosition(删除发布的职位)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月23日 下午7:56:48    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月23日 下午7:56:48    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("/deletePosition")
	@ResponseBody
	public String deletePosition(String ids){
		
		jobService.deletePosition(ids);
		
		
		return "success";
		
	}
	
	/**
	 * <pre>queryjobByid(修改前的查询)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午1:42:50    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午1:42:50    
	 * 修改备注： 
	 * @return</pre>
	 */
	@ResponseBody
	@RequestMapping("queryjobByid")
	public Job queryjobByid(Integer jid){
		
		Job jos=jobService.queryjobByid(jid);
		
		return jos;
		
		
		
	}
	
	
	@RequestMapping("updatePosition")
	@ResponseBody
	public String updatePosition(Job job){
		jobService.updatePosition(job);
		
		return "success";
	}
	
	
	
	
	
	
	
	/**
	 * <pre>queryHotJobs(这里用一句话描述这个方法的作用)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月23日 下午3:21:27    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月23日 下午3:21:27    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="queryHotJobs")
	@ResponseBody
	public List<Job> queryHotJobs(){
		List<Job> jlist = new ArrayList<Job>();
		try {
			jlist = jobService.queryHotJobs();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jlist;
	}
	/**
	 * <pre>queryCompany(根据职位ID查询职位详细信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月23日 下午4:38:41    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月23日 下午4:38:41    
	 * 修改备注： 
	 * @param id
	 * @return</pre>
	 * @throws Exception 
	 */
	@RequestMapping(value="queryCompany")
	public String queryCompany(Integer id,HttpServletRequest request) throws Exception{
	
		
			List<Job> job = jobService.queryJobInfo(id);
			for (Job job2 : job) {
				
				request.setAttribute("job", job2);
			}
		
	
		return "jobInfo";
	}
	
	/**
	 * <pre>queryJobByName(根据职位名称模糊匹配相似招聘信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月23日 下午8:44:44    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月23日 下午8:44:44    
	 * 修改备注： 
	 * @param name
	 * @return</pre>
	 */
	@RequestMapping(value="queryJobByName")
	@ResponseBody
	public List<Job> queryJobByName(String name){
		Job job = new Job();
		String jname = name.substring(0,3);
		job.setJname(jname);
		List<Job> jlist = new ArrayList<Job>();
		try {
			jlist = jobService.queryJobByName(job);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return jlist;
	}
	
	/**
	 * <pre>queryReceiveResume(收到的简历)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月26日 下午4:55:45    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月26日 下午4:55:45    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("/queryReceiveResume")
	@ResponseBody
	public List queryReceiveResume(String companyid){
	List  list =jobService.queryReceiveResume(companyid);	
		
		return list;
		
		
	}
	
	@RequestMapping("/selectjobandresume")
	@ResponseBody
	public List selectjobandresume(){
		
		List job=jobService.selectjobandresume();
		
		
		return job;
		
	}
	
	/**
	 * <pre>deleteResumeyk(删除简历不约面试)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:07:24    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:07:24    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("deleteResumeyk")
	@ResponseBody
	public String deleteResumeyk(String ids){
		
		jobService.deleteResumeyk(ids);
		return "success";
		
	}
	
	/**
	 * <pre>deletejianliyk(单个删除简历)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:35:08    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:35:08    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("deletejianliyk")
	@ResponseBody
	public String deletejianliyk(Integer id){
		
		jobService.deletejianliyk(id);
		
		return "success";
		
		
	}	
	
	
	

}
