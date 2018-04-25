package com.jk.model;
import java.io.Serializable;
/** 
 * <pre>项目名称：ssm-jobs    
 * 类名称：Company    
 * 类描述：    
 * 创建人：changlutong
 * 创建时间：2018年3月23日 上午10:05:38    
 * 修改人：changlutong    
 * 修改时间：2018年3月23日 上午10:05:38    
 * 修改备注：       
 * @version </pre>    
 */
public class Company implements Serializable{
	
		private static final long serialVersionUID = 4174252315187782344L;
		private String id;
		private String companyname;
		private String companyinfo;
		private String cphone;
		private String companylogin;
		private String cpassword;
		private Integer queone;
		private Integer quetwo;
		private String anone;
		private String antwo;
		private String zhizhao;
		private String daimacard;
		private String cardzheng;
		private String cardfan;
		private Integer member;
		private Integer jifen;
		private Integer zongjifen;
		private String biaoid;
		private String faren;
		private String farenid;
		private String ycode;
		
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getCompanyname() {
			return companyname;
		}
		public void setCompanyname(String companyname) {
			this.companyname = companyname;
		}
		public String getCompanyinfo() {
			return companyinfo;
		}
		public void setCompanyinfo(String companyinfo) {
			this.companyinfo = companyinfo;
		}
		public String getCphone() {
			return cphone;
		}
		public void setCphone(String cphone) {
			this.cphone = cphone;
		}
		public String getCompanylogin() {
			return companylogin;
		}
		public void setCompanylogin(String companylogin) {
			this.companylogin = companylogin;
		}
		public String getCpassword() {
			return cpassword;
		}
		public void setCpassword(String cpassword) {
			this.cpassword = cpassword;
		}
		public Integer getQueone() {
			return queone;
		}
		public void setQueone(Integer queone) {
			this.queone = queone;
		}
		public Integer getQuetwo() {
			return quetwo;
		}
		public void setQuetwo(Integer quetwo) {
			this.quetwo = quetwo;
		}
		public String getAnone() {
			return anone;
		}
		public void setAnone(String anone) {
			this.anone = anone;
		}
		public String getAntwo() {
			return antwo;
		}
		public void setAntwo(String antwo) {
			this.antwo = antwo;
		}
		public String getZhizhao() {
			return zhizhao;
		}
		public void setZhizhao(String zhizhao) {
			this.zhizhao = zhizhao;
		}
		public String getDaimacard() {
			return daimacard;
		}
		public void setDaimacard(String daimacard) {
			this.daimacard = daimacard;
		}
		public String getCardzheng() {
			return cardzheng;
		}
		public void setCardzheng(String cardzheng) {
			this.cardzheng = cardzheng;
		}
		public String getCardfan() {
			return cardfan;
		}
		public void setCardfan(String cardfan) {
			this.cardfan = cardfan;
		}
		public Integer getMember() {
			return member;
		}
		public void setMember(Integer member) {
			this.member = member;
		}
		public Integer getJifen() {
			return jifen;
		}
		public void setJifen(Integer jifen) {
			this.jifen = jifen;
		}
		public Integer getZongjifen() {
			return zongjifen;
		}
		public void setZongjifen(Integer zongjifen) {
			this.zongjifen = zongjifen;
		}
		public String getBiaoid() {
			return biaoid;
		}
		public void setBiaoid(String biaoid) {
			this.biaoid = biaoid;
		}
		public String getFaren() {
			return faren;
		}
		public void setFaren(String faren) {
			this.faren = faren;
		}
		public String getFarenid() {
			return farenid;
		}
		public void setFarenid(String farenid) {
			this.farenid = farenid;
		}
		
		public String getYcode() {
			return ycode;
		}
		public void setYcode(String ycode) {
			this.ycode = ycode;
		}
		@Override
		public String toString() {
			return "Company [id=" + id + ", companyname=" + companyname + ", companyinfo=" + companyinfo + ", cphone="
					+ cphone + ", companylogin=" + companylogin + ", cpassword=" + cpassword + ", queone=" + queone
					+ ", quetwo=" + quetwo + ", anone=" + anone + ", antwo=" + antwo + ", zhizhao=" + zhizhao
					+ ", daimacard=" + daimacard + ", cardzheng=" + cardzheng + ", cardfan=" + cardfan + ", member="
					+ member + ", jifen=" + jifen + ", zongjifen=" + zongjifen + ", biaoid=" + biaoid + ", faren=" + faren
					+ ", farenid=" + farenid + ", ycode=" + ycode + "]";
		}
		
}
