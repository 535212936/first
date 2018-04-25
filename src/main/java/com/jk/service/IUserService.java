package com.jk.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.jk.model.User;

public interface IUserService {

	String saveuserinfo(User user);

	List selectTxlk() throws Exception;

	String selectdenglu(User user, HttpSession session);

	String sjiyanzheng(User user);

	void xiugaizhanghao(User user);

	String selectuserWenti2(String loginname);

	String selectuserWenti1(String loginname);

}
