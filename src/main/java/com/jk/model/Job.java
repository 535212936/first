package com.jk.model;

public class Job {
    private Integer jid;

    private String jname; //名称

    private String jyaoqiu; //要求

    private String jzhizhe; //职责

    private String companyid; //公司id
    private String companyname;

    private Integer jstatus; //状态
    private Integer jpnum;  //人数
    
    private String jaddress; //地址
    
    private Double jsalarymin; //最高
    private Double jsalarymax; //最低薪资
    //查询发布职位的公司名称
    private String comname;
    
    private String cominfo;
    
    private Integer jhot;   //热度

	public Integer getJid() {
		return jid;
	}

	public void setJid(Integer jid) {
		this.jid = jid;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getJyaoqiu() {
		return jyaoqiu;
	}

	public void setJyaoqiu(String jyaoqiu) {
		this.jyaoqiu = jyaoqiu;
	}

	public String getJzhizhe() {
		return jzhizhe;
	}

	public void setJzhizhe(String jzhizhe) {
		this.jzhizhe = jzhizhe;
	}

	public String getCompanyid() {
		return companyid;
	}

	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}

	public Integer getJstatus() {
		return jstatus;
	}

	public void setJstatus(Integer jstatus) {
		this.jstatus = jstatus;
	}

	public Integer getJpnum() {
		return jpnum;
	}

	public void setJpnum(Integer jpnum) {
		this.jpnum = jpnum;
	}

	public String getJaddress() {
		return jaddress;
	}

	public void setJaddress(String jaddress) {
		this.jaddress = jaddress;
	}

	public Double getJsalarymin() {
		return jsalarymin;
	}

	public void setJsalarymin(Double jsalarymin) {
		this.jsalarymin = jsalarymin;
	}

	public Double getJsalarymax() {
		return jsalarymax;
	}

	public void setJsalarymax(Double jsalarymax) {
		this.jsalarymax = jsalarymax;
	}

	public String getComname() {
		return comname;
	}

	public void setComname(String comname) {
		this.comname = comname;
	}

	public String getCominfo() {
		return cominfo;
	}

	public void setCominfo(String cominfo) {
		this.cominfo = cominfo;
	}

	public Integer getJhot() {
		return jhot;
	}

	public void setJhot(Integer jhot) {
		this.jhot = jhot;
	}

	
	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	/* (non-Javadoc)    
	 * @see java.lang.Object#toString()    
	 */
	@Override
	public String toString() {
		return "Job [jid=" + jid + ", jname=" + jname + ", jyaoqiu=" + jyaoqiu + ", jzhizhe=" + jzhizhe + ", companyid="
				+ companyid + ", companyname=" + companyname + ", jstatus=" + jstatus + ", jpnum=" + jpnum
				+ ", jaddress=" + jaddress + ", jsalarymin=" + jsalarymin + ", jsalarymax=" + jsalarymax + ", comname="
				+ comname + ", cominfo=" + cominfo + ", jhot=" + jhot + "]";
	}


	

    

    
    
    
    
    
    
}