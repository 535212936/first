package com.jk.model;

public class Resume {
  
    private Integer resumeid;

    private String resumename;

    private Integer userid;

    private String username;

    private String userphone;

    private String sex;

    private String birthday;

    private String photo;

    private String jiguan;

    private String minzu;

    private String zhengzhimianmao;

    private String hunyinzhuangkuang;

    private String jiankangzhuangkuang;

	public Integer getResumeid() {
		return resumeid;
	}

	public void setResumeid(Integer resumeid) {
		this.resumeid = resumeid;
	}

	public String getResumename() {
		return resumename;
	}

	public void setResumename(String resumename) {
		this.resumename = resumename;
	}

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

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getJiguan() {
		return jiguan;
	}

	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}

	public String getMinzu() {
		return minzu;
	}

	public void setMinzu(String minzu) {
		this.minzu = minzu;
	}

	public String getZhengzhimianmao() {
		return zhengzhimianmao;
	}

	public void setZhengzhimianmao(String zhengzhimianmao) {
		this.zhengzhimianmao = zhengzhimianmao;
	}

	public String getHunyinzhuangkuang() {
		return hunyinzhuangkuang;
	}

	public void setHunyinzhuangkuang(String hunyinzhuangkuang) {
		this.hunyinzhuangkuang = hunyinzhuangkuang;
	}

	public String getJiankangzhuangkuang() {
		return jiankangzhuangkuang;
	}

	public void setJiankangzhuangkuang(String jiankangzhuangkuang) {
		this.jiankangzhuangkuang = jiankangzhuangkuang;
	}

	@Override
	public String toString() {
		return "Resume [resumeid=" + resumeid + ", resumename=" + resumename + ", userid=" + userid + ", username="
				+ username + ", userphone=" + userphone + ", sex=" + sex + ", birthday=" + birthday + ", photo=" + photo
				+ ", jiguan=" + jiguan + ", minzu=" + minzu + ", zhengzhimianmao=" + zhengzhimianmao
				+ ", hunyinzhuangkuang=" + hunyinzhuangkuang + ", jiankangzhuangkuang=" + jiankangzhuangkuang + "]";
	}

	

	


}