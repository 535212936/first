package com.jk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jk.model.Resume;
import com.jk.model.Resumeb;

public interface ResumeMapper {


	int addresume(Resume resume);

	List<Object> selectresume(@Param("userid") Integer userid);

	List<Object> selectresumeall(@Param("resumeid") Integer resumeid);

	void updateresume(Resume resume);

	List selectRedu() throws Exception;

	/** <pre>selectMailName(这里用一句话描述这个方法的作用)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月30日 下午2:56:36    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月30日 下午2:56:36    
	 * 修改备注： 
	 * @param id
	 * @return</pre>    
	 */
	Resumeb selectMailName(Integer id);

}