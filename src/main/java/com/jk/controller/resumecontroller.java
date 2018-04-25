package com.jk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jk.model.Resume;
import com.jk.model.Resumeb;
import com.jk.model.Resumec;
import com.jk.model.Resumed;
import com.jk.model.User;
import com.jk.model.resumecompany;
import com.jk.service.resumeservice;

@Controller
@RequestMapping("resumecontroller")
public class resumecontroller {

	@Autowired
	private resumeservice  resumeservice;
	
	
	@RequestMapping("addrecom")
    @ResponseBody
	public String addrecom(resumecompany rescom){
		
		rescom.setZhuangtai(1);
		
		resumeservice.addrecom(rescom);
		
		
		return"1";
	}
	
	@RequestMapping("addresume")
    @ResponseBody
	public String addresume(Resume resume,Resumeb resumeb,Resumec resumec,Resumed resumed){
		
	
		
		resumeservice.addresume(resume,resumeb,resumec,resumed);
		
		
		return"1";
	}
	@RequestMapping("updateresume")
	@ResponseBody
	public String updateresume(Resume resume,Resumeb resumeb,Resumec resumec,Resumed resumed){
		
		
		
		resumeservice.updateresume(resume,resumeb,resumec,resumed);
		
		
		return"1";
	}
	
	@RequestMapping("selectresume")
	@ResponseBody
	public List<Object> selectresume(HttpSession session){
		
		User user = (User) session.getAttribute("user");
		Integer userid = user.getUserid();
		List<Object> list=resumeservice.selectresume(userid);
		return list;	
	}
	@RequestMapping("selectresumetoudi")
	public String selectresumetoudi(HttpServletRequest req,String companyid){
		
		req.setAttribute("companyid",companyid);
		
		return "toutijianli";	
	}
	/**
	 * <pre>zcytdjl(首页面  广告页   投递简历)   
	 * 创建人：刘沁鑫yangpei310@163.com
	 * 创建时间：2018年3月28日 下午2:55:01    
	 * 修改人：刘沁鑫yangpei310@163.com
	 * 修改时间：2018年3月28日 下午2:55:01    
	 * 修改备注： 
	 * @param req
	 * @param companyid
	 * @return</pre>
	 */
	@RequestMapping("zcytdjl")
	public String zcytdjl(HttpServletRequest req,String companyid){
		
		req.setAttribute("companyid",companyid);
		
		return "toutijianli";	
	}

	@RequestMapping("selectresumeall")
	public String selectresumeall(HttpServletRequest req,Integer resumeid){
		
		List list=resumeservice.selectresumeall(resumeid);
		
		req.setAttribute("resume", list);
		
		return "selectresumeall";	
	}
	
	@RequestMapping("toupdateresume")
	public String toupdateresume(HttpServletRequest req,Integer resumeid){
	List list=resumeservice.selectresumeall(resumeid);
		
	req.setAttribute("resume", list);
		
		return "updateresume";	
	}
	
	/**
	 * <pre>selectRedu(安排行(热度)来排序)   
	 * 创建人：刘沁鑫yangpei310@163.com
	 * 创建时间：2018年3月26日 上午9:16:43    
	 * 修改人：刘沁鑫yangpei310@163.com
	 * 修改时间：2018年3月26日 上午9:16:43    
	 * 修改备注： 
	 * @return</pre>
	 */
	
	@RequestMapping("selectRedu")
	@ResponseBody
	public List selectRedu(){
			List list = null;
			try {
				list = resumeservice.selectRedu();
			} catch (Exception e) {
				e.printStackTrace();
			}
		return list;
	}
	/**
	 * <pre>selectxingqin(查询具体页面 点击排行查看)   
	 * 创建人：刘沁鑫yangpei310@163.com
	 * 创建时间：2018年3月26日 上午11:24:48    
	 * 修改人：刘沁鑫yangpei310@163.com
	 * 修改时间：2018年3月26日 上午11:24:48    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("selectxingqin")
	@ResponseBody
	public String selectxingqin(){
		return "selectxingqing";
	}
	
}
