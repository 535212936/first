package com.jk.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jk.model.Tree;
import com.jk.model.User;

public interface TreeMapper {
  


	
	
	
	/** <pre>recursionTree(查询那个tree的列表)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月19日 下午2:03:34    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月19日 下午2:03:34    
	 * 修改备注： 
	 * @param pid
	 * @return</pre>    
	 */
	List<Tree> recursionTree(String pid) throws Exception;
}