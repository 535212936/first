package com.jk.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.jk.model.Company;
import com.jk.model.Job;
import com.jk.model.Tree;

public interface ICompanyService {

	String tosavecompany(Company company);

	String logincompany(Company company, HttpSession session);

	List<Tree> togetxiala();

	void buquancom(Company company);


	Integer selectcompanyjifen(String id, String biaoid);





	List<Company> queryCompanyById(String id) throws Exception;

	List<Job> queryJobById(String id)throws Exception;

	void updatejifen(String id, String biaoid, Integer xiaofei);
	
	
	/** <pre>updatejifenyk(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月29日 下午5:32:52    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月29日 下午5:32:52    
	 * 修改备注： 
	 * @param jifen 
	 * @param biaoid 
	 * @param id</pre>    
	 */
	void updatejifenyk(String id, String biaoid, Integer jifen);

	void updatejifentt(String id, String biaoid, Integer ioio);

}
