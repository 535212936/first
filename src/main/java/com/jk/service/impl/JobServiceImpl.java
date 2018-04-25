/** 
 * <pre>项目名称:ssm-jobs 
 * 文件名称:JobServiceImpl.java 
 * 包名:com.jk.service.impl 
 * 创建日期:2018年3月22日下午4:56:04 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.service.impl;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.jk.dao.JobMapper;
import com.jk.model.Guanggao;
import com.jk.model.Job;
import com.jk.service.JobService;

/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：JobServiceImpl    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月22日 下午4:56:04    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月22日 下午4:56:04    
 * 修改备注：       
 * @version </pre>    
 */ 
@Service
public class JobServiceImpl implements JobService {
	
	@Autowired
	private JobMapper jobDao;

	@Override
	public List<Job> queryJob(String companyid) {
		
		return jobDao.queryJob(companyid);
	}
	@Override
	public void updateJobUp(Integer jid) {
		jobDao.updateJobUp(jid);
	}

	@Override
	public void updateJobDown(Integer jid) {
		jobDao.updateJobDown(jid);
	}
	@Override
	public List<Job> queryHotJobs() throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Job>list=new ArrayList<Job>();
		for (String biaoid : arr) {
			List<Job> list1=jobDao.queryHotJobs(biaoid);
			for (Job guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}
	@Override
	public List<Job> queryJobInfo(Integer id) throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Job>list=new ArrayList<Job>();
		for (String biaoid : arr) {
			List<Job> list1=jobDao.queryJobInfo(id,biaoid);
			for (Job guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}
	@Override
	public List<Job> queryJobByName(Job job) throws Exception {
		return jobDao.queryJobByName(job);
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#addPosition(com.jk.model.Job, javax.servlet.http.HttpServletRequest)    
	 */
	@Override
	public void addPosition(Job job) {
		
		jobDao.addPosition(job);
		
		
	}
	/* (non-Javadoc)  删除  
	 * @see com.jk.service.JobService#deletePosition(java.lang.String)    
	 */
	@Override
	public void deletePosition(String ids) {
		String[] jid = ids.split(",");
		List <String> list=new ArrayList<String>();
		for (String string : jid) {
			list.add(string);
		}
		
		jobDao.deletePosition(list);
		
		
	}

	
	@Override
	public List selectjobandresume() {
		
		return jobDao.selectjobandresume();
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#queryJobByName(java.lang.String)    
	 */
	@Cacheable(value ="redis",key="'queryJobByName'")
	@Override
	public List<Job> queryJobByName(String jname) throws Exception {
		return jobDao.queryJobByName(jname);
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#queryReceiveResume(java.lang.String)    
	 */
	@Override
	public List queryReceiveResume(String companyid) {
		return jobDao.queryReceiveResume(companyid);
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#queryjobByid(java.lang.Integer)    
	 */
	@Override
	public Job queryjobByid(Integer jid) {
		return jobDao.queryjobByid(jid);
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#updatePosition(com.jk.model.Job)    
	 */
	@Override
	public void updatePosition(Job job) {
		jobDao.updatePosition(job);
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#deleteResumeyk(java.lang.String)    
	 */
	@Override
	public void deleteResumeyk(String ids) {
		String[] jid = ids.split(",");
		List <String> list=new ArrayList<String>();
		for (String string : jid) {
			list.add(string);
		}
		jobDao.deleteResumeyk(list);
		
	}
	/* (non-Javadoc)    
	 * @see com.jk.service.JobService#deletejianliyk(java.lang.Integer)    
	 */
	@Override
	public void deletejianliyk(Integer id) {
		jobDao.deletejianliyk(id);
		
	}
	
	

}
