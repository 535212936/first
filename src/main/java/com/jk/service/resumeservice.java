package com.jk.service;

import java.util.List;

import com.jk.model.Resume;
import com.jk.model.Resumeb;
import com.jk.model.Resumec;
import com.jk.model.Resumed;
import com.jk.model.resumecompany;

public interface resumeservice {

	void addresume(Resume resume, Resumeb resumeb, Resumec resumec, Resumed resumed);

	List<Object> selectresume(Integer userid);

	List selectresumeall(Integer resumeid);

	void updateresume(Resume resume, Resumeb resumeb, Resumec resumec, Resumed resumed);

	List selectRedu() throws Exception;

	void addrecom(resumecompany rescom);

	/** <pre>selectMailName(查邮箱id等)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月30日 下午2:53:53    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月30日 下午2:53:53    
	 * 修改备注： 
	 * @param id
	 * @return</pre>    
	 */
	Resumeb selectMailName(Integer id);

}
