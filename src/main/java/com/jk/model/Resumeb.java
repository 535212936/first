package com.jk.model;

public class Resumeb {
    private Integer resumebid;

    private Integer resumeid;

    private String zhuanye;

    private String biyexuexiao;

    private String xueli;

    private String mubiaozhiwei;

    private String gongzuoxingzhi;

    private String youxiang;
    
    private Integer zhuangtai;

    
    public Integer getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(Integer zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public Integer getResumebid() {
        return resumebid;
    }

    public void setResumebid(Integer resumebid) {
        this.resumebid = resumebid;
    }

    public Integer getResumeid() {
        return resumeid;
    }

    public void setResumeid(Integer resumeid) {
        this.resumeid = resumeid;
    }

    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye == null ? null : zhuanye.trim();
    }

    public String getBiyexuexiao() {
        return biyexuexiao;
    }

    public void setBiyexuexiao(String biyexuexiao) {
        this.biyexuexiao = biyexuexiao == null ? null : biyexuexiao.trim();
    }

    public String getXueli() {
        return xueli;
    }

    public void setXueli(String xueli) {
        this.xueli = xueli == null ? null : xueli.trim();
    }

    public String getMubiaozhiwei() {
        return mubiaozhiwei;
    }

    public void setMubiaozhiwei(String mubiaozhiwei) {
        this.mubiaozhiwei = mubiaozhiwei == null ? null : mubiaozhiwei.trim();
    }

    public String getGongzuoxingzhi() {
        return gongzuoxingzhi;
    }

    public void setGongzuoxingzhi(String gongzuoxingzhi) {
        this.gongzuoxingzhi = gongzuoxingzhi == null ? null : gongzuoxingzhi.trim();
    }

    public String getYouxiang() {
        return youxiang;
    }

    public void setYouxiang(String youxiang) {
        this.youxiang = youxiang == null ? null : youxiang.trim();
    }

	/* (non-Javadoc)    
	 * @see java.lang.Object#toString()    
	 */
	@Override
	public String toString() {
		return "Resumeb [resumebid=" + resumebid + ", resumeid=" + resumeid + ", zhuanye=" + zhuanye + ", biyexuexiao="
				+ biyexuexiao + ", xueli=" + xueli + ", mubiaozhiwei=" + mubiaozhiwei + ", gongzuoxingzhi="
				+ gongzuoxingzhi + ", youxiang=" + youxiang + ", zhuangtai=" + zhuangtai + "]";
	}


    
}