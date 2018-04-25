package com.jk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jk.model.User;

public interface IUserDao {
	
	Integer zhuchexianselectname(User user);

	void saveuserinfo(User user);

	List selectTxlk() throws Exception;

	Integer loginnamett(User user);

	User loginnameandmima(User user);

	Integer sjiyanzheng(User user);

	void xiugaizhanghao(User user);

	Integer selectuserWenti1(@Param("loginname") String loginname);

	String selectWenti1(@Param("tt") Integer tt);

	Integer selectuserWenti2(@Param("loginname") String loginname);

	String selectWenti2(@Param("tt") Integer tt);




}
