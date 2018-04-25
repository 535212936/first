package com.jk.model;

import java.io.Serializable;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3320843841912771741L;
	private Integer userid; //
	private String username; // 正式姓名
	private String loginname; // 账号
	private String password; // 密码
	private String questionone; // 问题
	private String answerone; // 答案1
	private String questiontwo; //
	private String answertwo; //
	private String phone; // 手机号
	private String photo; // 图片
	private String biaoid; //
	private String yzm; //

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestionone() {
		return questionone;
	}

	public void setQuestionone(String questionone) {
		this.questionone = questionone;
	}

	public String getAnswerone() {
		return answerone;
	}

	public void setAnswerone(String answerone) {
		this.answerone = answerone;
	}

	public String getQuestiontwo() {
		return questiontwo;
	}

	public void setQuestiontwo(String questiontwo) {
		this.questiontwo = questiontwo;
	}

	public String getAnswertwo() {
		return answertwo;
	}

	public void setAnswertwo(String answertwo) {
		this.answertwo = answertwo;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getBiaoid() {
		return biaoid;
	}

	public void setBiaoid(String biaoid) {
		this.biaoid = biaoid;
	}

	public String getYzm() {
		return yzm;
	}

	public void setYzm(String yzm) {
		this.yzm = yzm;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", loginname=" + loginname + ", password="
				+ password + ", questionone=" + questionone + ", answerone=" + answerone + ", questiontwo="
				+ questiontwo + ", answertwo=" + answertwo + ", phone=" + phone + ", photo=" + photo + ", biaoid="
				+ biaoid + ", yzm=" + yzm + "]";
	}

}
