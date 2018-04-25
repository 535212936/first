package com.jk.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.jk.dao.IUserDao;
import com.jk.model.User;
import com.jk.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	private IUserDao userDao;

	/**
	 * 注册
	 */
	@Override
	public String saveuserinfo(User user) {
		
	Integer tt = userDao.zhuchexianselectname(user);
		if(tt == 0){
				userDao.saveuserinfo(user);
				return "2";
		}
		return "1";
	}

	/**
	 * 查询下拉框
	 * 
	 * @throws Exception
	 */
	@Override
	public List selectTxlk() throws Exception {
		return userDao.selectTxlk();
	}

	/**
	 * 登录
	 */
	@Override
	public String selectdenglu(User user, HttpSession session) {

		Integer tt = userDao.loginnamett(user);
		if (tt == 1) {
			User list = userDao.loginnameandmima(user);
			session.setAttribute("user", list);
			session.setAttribute("companyid", list.getUserid());
			return "2";
		}
		return "1";
	}
/**
 * 重置时先查询账号与手机号是否关联
 */
	@Override
	public String sjiyanzheng(User user) {
			
		Integer tt = userDao.sjiyanzheng(user);
		if(tt == 1){
			return "1";//手机号与账号匹配
		}
		return "2";//手机号与账号不匹配
	}
/**
 *之前的 验证都通过 此方法修改
 */
@Override
public void xiugaizhanghao(User user) {
	userDao.xiugaizhanghao(user);
}
/**
 * 更具账号去后台查询  问题 回显span 中
 */
@Override
public String selectuserWenti1(String loginname) {
	Integer tt = userDao.selectuserWenti1(loginname);
		if(tt != null){
				String tyt = userDao.selectWenti1(tt);
			return tyt;
		}
	return "输入有误....";
}

@Override
public String selectuserWenti2(String loginname) {
	Integer tt = userDao.selectuserWenti2(loginname);
	if(tt != null){
		String tyt = userDao.selectWenti2(tt);
		return tyt;
	}
return "输入有误....";
}
}
