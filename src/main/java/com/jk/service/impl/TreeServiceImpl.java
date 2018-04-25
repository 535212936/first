
package com.jk.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.TreeMapper;
import com.jk.model.Tree;
import com.jk.service.TreeService;

/**
 * 
 * <pre>项目名称：ssm-bams    
 * 类名称：TreeServiceImpl    
 * 类描述：    
 * 创建人：袁康 1056079234@qq.com
 * 创建时间：2018年3月7日 上午11:44:07    
 * 修改人：袁康 1056079234@qq.com    
 * 修改时间：2018年3月7日 上午11:44:07    
 * 修改备注：       
 * @version </pre>
 */
@Service
public class TreeServiceImpl implements TreeService {

	/* (non-Javadoc)    
	 * @see com.jk.service.TreeService#selectTreeList(com.jk.model.Tree)    
	 */
	@Autowired
	private TreeMapper treeDao;
	
	public List<Tree> selectTreeList() throws Exception {
		
		List<Tree> treeAll=recursionTreed("0");
		return treeAll;
	}
	
	//递归：自己调用自己
    public List<Tree> recursionTreed(String pid) throws Exception{
//      根据id查询子节点列表
        List<Tree> trees = treeDao.recursionTree(pid);
//      判断查询到数据，则循环操作
        if(trees != null && trees.size()>0){
            for (int i = 0; i < trees.size(); i++) {
//              根据当前节点id查询新的子集列表，
                List<Tree> trees2 = recursionTreed(trees.get(i).getId().toString());
//              将列表set到当前树节点对象中
                trees.get(i).setNodes(trees2);
            }
        }
        return trees;
    }

	
	
	
	
	
	

}
