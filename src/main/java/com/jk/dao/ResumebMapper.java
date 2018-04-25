package com.jk.dao;

import com.jk.model.Resumeb;

public interface ResumebMapper {
 
	int addresume(Resumeb resumeb);

	void updateresume(Resumeb resumeb);

	/** <pre>updatezhuangtai(邀约面试状态改变)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月30日 下午2:56:47    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月30日 下午2:56:47    
	 * 修改备注： 
	 * @param resumeid</pre>    
	 */
	void updatezhuangtai(Integer resumeid);
}