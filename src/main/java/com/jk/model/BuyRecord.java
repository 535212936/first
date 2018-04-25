package com.jk.model;

import java.io.Serializable;

public class BuyRecord implements Serializable{
	private static final long serialVersionUID = -806739201647862879L;
	private String id;
	private Integer goodid;
	private String userid;
	private Integer goodcount;
	private Integer status;//判断是否已经评论
	private String buytime;
	private String goodname;//商品名称
	private String goodimage;//商品图片
	private String goodinfo;//商品简介
	private Integer price ;//商品单价
	private String comment ;//评论信息
	
	
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getGoodimage() {
		return goodimage;
	}
	public void setGoodimage(String goodimage) {
		this.goodimage = goodimage;
	}
	public String getGoodinfo() {
		return goodinfo;
	}
	public void setGoodinfo(String goodinfo) {
		this.goodinfo = goodinfo;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getGoodid() {
		return goodid;
	}
	public void setGoodid(Integer goodid) {
		this.goodid = goodid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Integer getGoodcount() {
		return goodcount;
	}
	public void setGoodcount(Integer goodcount) {
		this.goodcount = goodcount;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getBuytime() {
		return buytime;
	}
	public void setBuytime(String buytime) {
		this.buytime = buytime;
	}
	@Override
	public String toString() {
		return "BuyRecord [id=" + id + ", goodid=" + goodid + ", userid=" + userid + ", goodcount=" + goodcount
				+ ", status=" + status + ", buytime=" + buytime + ", goodname=" + goodname + ", goodimage=" + goodimage
				+ ", goodinfo=" + goodinfo + ", price=" + price + ", comment=" + comment + "]";
	}
	
	
}
