/** 
 * <pre>项目名称:ssm-jobs 
 * 文件名称:JobService.java 
 * 包名:com.jk.service 
 * 创建日期:2018年3月22日下午4:55:38 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Job;

/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：JobService    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月22日 下午4:55:38    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月22日 下午4:55:38    
 * 修改备注：       
 * @version </pre>     
 */
public interface JobService {

	/** <pre>queryJob(查询发布职位信息)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午4:58:40    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午4:58:40    
	 * 修改备注： 
	 * @param companyid
	 * @return</pre>    
	 */
	List<Job> queryJob(String companyid);
	
	
	/** <pre>updateJobUp(把职位从未发布到已发布)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午9:47:30    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午9:47:30    
	 * 修改备注： 
	 * @param jid</pre>    
	 */
	void updateJobUp(Integer jid);

	/** <pre>updateJobDown(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午10:49:17    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午10:49:17    
	 * 修改备注： 
	 * @param jid</pre>    
	 */
	void updateJobDown(Integer jid);


	List<Job> queryHotJobs() throws Exception;


	List<Job> queryJobInfo(Integer id)throws Exception;


	List<Job> queryJobByName(String jname)throws Exception;


	List<Job> queryJobByName(Job job)throws Exception;


	/** <pre>addPosition(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月23日 下午7:22:17    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月23日 下午7:22:17    
	 * 修改备注： 
	 * @param job
	 * @param request</pre>    
	 */
	void addPosition(Job job);


	void deletePosition(String ids);


	List selectjobandresume();


	/** <pre>queryReceiveResume(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月26日 下午8:25:04    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月26日 下午8:25:04    
	 * 修改备注： 
	 * @param companyid
	 * @return</pre>    
	 */
	List queryReceiveResume(String companyid);


	/** <pre>queryjobByid(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午1:52:45    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午1:52:45    
	 * 修改备注： 
	 * @param jid
	 * @return</pre>    
	 */
	Job queryjobByid(Integer jid);


	/** <pre>updatePosition(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午1:52:52    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午1:52:52    
	 * 修改备注： 
	 * @param job</pre>    
	 */
	void updatePosition(Job job);


	/** <pre>deleteResumeyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:08:18    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:08:18    
	 * 修改备注： 
	 * @param ids</pre>    
	 */
	void deleteResumeyk(String ids);


	/** <pre>deletejianliyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:36:04    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:36:04    
	 * 修改备注： 
	 * @param id</pre>    
	 */
	void deletejianliyk(Integer id);

}
