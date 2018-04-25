package com.jk.model;

public class Resumed {
    private Integer resumedid;

    private Integer resumeid;

    private String xiangmumingcheng;

    private String kaifahuanjing;

    private String xiangmumiaoshu;

    private String gongnengmokuai;

    public Integer getResumedid() {
        return resumedid;
    }

    public void setResumedid(Integer resumedid) {
        this.resumedid = resumedid;
    }

    public Integer getResumeid() {
        return resumeid;
    }

    public void setResumeid(Integer resumeid) {
        this.resumeid = resumeid;
    }

    public String getXiangmumingcheng() {
        return xiangmumingcheng;
    }

    public void setXiangmumingcheng(String xiangmumingcheng) {
        this.xiangmumingcheng = xiangmumingcheng == null ? null : xiangmumingcheng.trim();
    }

    public String getKaifahuanjing() {
        return kaifahuanjing;
    }

    public void setKaifahuanjing(String kaifahuanjing) {
        this.kaifahuanjing = kaifahuanjing == null ? null : kaifahuanjing.trim();
    }

    public String getXiangmumiaoshu() {
        return xiangmumiaoshu;
    }

    public void setXiangmumiaoshu(String xiangmumiaoshu) {
        this.xiangmumiaoshu = xiangmumiaoshu == null ? null : xiangmumiaoshu.trim();
    }

    public String getGongnengmokuai() {
        return gongnengmokuai;
    }

    public void setGongnengmokuai(String gongnengmokuai) {
        this.gongnengmokuai = gongnengmokuai == null ? null : gongnengmokuai.trim();
    }

	@Override
	public String toString() {
		return "Resumed [resumedid=" + resumedid + ", resumeid=" + resumeid + ", xiangmumingcheng=" + xiangmumingcheng
				+ ", kaifahuanjing=" + kaifahuanjing + ", xiangmumiaoshu=" + xiangmumiaoshu + ", gongnengmokuai="
				+ gongnengmokuai + "]";
	}
    
    
}