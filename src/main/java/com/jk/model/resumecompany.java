package com.jk.model;

public class resumecompany {
    private Integer id;

    private String companyid;

    private Integer resumeid;
    
    private Integer zhuangtai;


    public Integer getZhuangtai() {
		return zhuangtai;
	}

	public void setZhuangtai(Integer zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyid() {
        return companyid;
    }

    public void setCompanyid(String companyid) {
        this.companyid = companyid == null ? null : companyid.trim();
    }

    public Integer getResumeid() {
        return resumeid;
    }

    public void setResumeid(Integer resumeid) {
        this.resumeid = resumeid;
    }

	@Override
	public String toString() {
		return "resumecompany [id=" + id + ", companyid=" + companyid + ", resumeid=" + resumeid + ", zhuangtai="
				+ zhuangtai + "]";
	}

	
    
    
    
}