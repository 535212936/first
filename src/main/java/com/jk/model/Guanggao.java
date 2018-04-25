package com.jk.model;

public class Guanggao {

	private Integer id;
	
	private String comid;
	
	private String url;
	
	private String comname;
	private String biaoid;
	

	public String getComname() {
		return comname;
	}

	public void setComname(String comname) {
		this.comname = comname;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getComid() {
		return comid;
	}

	public void setComid(String comid) {
		this.comid = comid;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	

	public String getBiaoid() {
		return biaoid;
	}

	public void setBiaoid(String biaoid) {
		this.biaoid = biaoid;
	}

	@Override
	public String toString() {
		return "Guanggao [id=" + id + ", comid=" + comid + ", url=" + url + ", comname=" + comname + ", biaoid="
				+ biaoid + "]";
	}


	
	
	
}
