package com.jk.model;

import java.io.Serializable;

public class Goods implements Serializable {
	private static final long serialVersionUID = -5062344751634891396L;
	private Integer sid;
	private String simage;
	private String sname;
	private Integer sprice;
	private String sinfo;
	private Integer stype;
	private Integer sstatus;
	private Integer scount;
	private Integer xiaoji;
	private String yid;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Integer getSprice() {
		return sprice;
	}
	public void setSprice(Integer sprice) {
		this.sprice = sprice;
	}
	public String getSinfo() {
		return sinfo;
	}
	public void setSinfo(String sinfo) {
		this.sinfo = sinfo;
	}
	public Integer getStype() {
		return stype;
	}
	public void setStype(Integer stype) {
		this.stype = stype;
	}
	public Integer getSstatus() {
		return sstatus;
	}
	public void setSstatus(Integer sstatus) {
		this.sstatus = sstatus;
	}
	public Integer getScount() {
		return scount;
	}
	public void setScount(Integer scount) {
		this.scount = scount;
	}
	
	public Integer getXiaoji() {
		return this.scount*this.sprice;
	}
	public void setXiaoji(Integer xiaoji) {
		this.xiaoji = xiaoji;
	}
	
	public String getYid() {
		return yid;
	}
	public void setYid(String yid) {
		this.yid = yid;
	}
	@Override
	public String toString() {
		return "Goods [sid=" + sid + ", simage=" + simage + ", sname=" + sname + ", sprice=" + sprice + ", sinfo="
				+ sinfo + ", stype=" + stype + ", sstatus=" + sstatus + ", scount=" + scount + ", xiaoji=" + xiaoji
				+ ", yid=" + yid + "]";
	}
	

	

	
}
