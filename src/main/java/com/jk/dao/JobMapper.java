package com.jk.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.jk.model.Job;

public interface JobMapper {
 

	/** <pre>queryJob(查询发布职位信息)   
	 * 创建人：袁康 1056079234@qq.com 
	 * 创建时间：2018年3月22日 下午4:59:30    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午4:59:30    
	 * 修改备注： 
	 * @param companyid
	 * @return</pre>    
	 */
	List<Job> queryJob(String companyid);
	
	/** <pre>updateJobUp(把职位从未发布到已发布)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午9:48:29    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午9:48:29    
	 * 修改备注： 
	 * @param jid</pre>    
	 */
	void updateJobUp(Integer jid);

	/** <pre>updateJobDown(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月22日 下午10:49:48    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月22日 下午10:49:48    
	 * 修改备注： 
	 * @param jid</pre>    
	 */
	void updateJobDown(Integer jid);

	List<Job> queryHotJobs(@Param("biaoid") String biaoid) throws Exception;

	List<Job> queryJobInfo(@Param("id") Integer id, @Param("biaoid") String biaoid) throws Exception;

	List<Job> queryJobByName(Job job)throws Exception;

	/** <pre>addPosition(发布职位)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月23日 下午7:20:41    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月23日 下午7:20:41    
	 * 修改备注： 
	 * @param job
	 * @param request</pre>    
	 */
	void addPosition(Job job);

	
	void deletePosition(List<String> list);

	List selectjobandresume();


	/** <pre>queryJobByName(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月26日 下午8:22:29    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月26日 下午8:22:29    
	 * 修改备注： 
	 * @param jname
	 * @return</pre>    
	 */
	List<Job> queryJobByName(String jname);

	/** <pre>queryReceiveResume(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月26日 下午8:25:34    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月26日 下午8:25:34    
	 * 修改备注： 
	 * @param companyid
	 * @return</pre>    
	 */
	List queryReceiveResume(String companyid);

	/** <pre>queryjobByid(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午1:53:47    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午1:53:47    
	 * 修改备注： 
	 * @param jid
	 * @return</pre>    
	 */
	Job queryjobByid(Integer jid);

	/** <pre>updatePosition(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午1:53:51    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午1:53:51    
	 * 修改备注： 
	 * @param job</pre>    
	 */
	void updatePosition(Job job);

	/** <pre>deleteResumeyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:09:04    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:09:04    
	 * 修改备注： 
	 * @param list</pre>    
	 */
	void deleteResumeyk(List<String> list);

	/** <pre>deletejianliyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午7:37:07    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午7:37:07    
	 * 修改备注： 
	 * @param id</pre>    
	 */
	void deletejianliyk(Integer id);
}