package com.jk.dao;

import java.util.List;


import org.apache.ibatis.annotations.Param;


import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.EscapedErrors;


import com.jk.model.Company;
import com.jk.model.Job;
import com.jk.model.Tree;

public interface CompanyDao {

	List<Company> cunzhanghao(Company company);

	void tosavecompany(Company company);

	List<Company> logincompany(Company company);

	List<Tree> togetxiala();

	void buquancom(Company company);


	Integer selectcompanyjifen(@Param("id") String id, @Param("biaoid") String biaoid);



	List<Company> queryCompanyById(@Param("id") String id, @Param("biaoid") String biaoid) throws Exception;

	List<Job> queryJobById(@Param("id") String id)throws Exception;

	void updatejifen(@Param("id") String id, @Param("biaoid") String biaoid, @Param("xiaofei") Integer xiaofei);


	/** <pre>updatejifenyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月29日 下午5:33:18    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月29日 下午5:33:18    
	 * 修改备注： 
	 * @param jifen 
	 * @param biaoid 
	 * @param id</pre>    
	 */
	void updatejifenyk(@Param("id") String id, @Param("biaoid") String biaoid, @Param("jifen") Integer jifen);

	void updatejifentt(@Param("id") String id, @Param("biaoid") String biaoid, @Param("ioio") Integer ioio);




}
