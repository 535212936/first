package com.jk.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.CompanyDao;
import com.jk.model.Company;
import com.jk.model.Guanggao;
import com.jk.model.Job;
import com.jk.model.Tree;
import com.jk.model.User;
import com.jk.service.ICompanyService;

@Service
public class CompanyServiceImpl implements ICompanyService {
	@Autowired
	private CompanyDao companyDao;


	@Override
	public String tosavecompany(Company company) {
		String cphone = company.getCphone();
		
		String p=cphone.substring(0, 2);
		if("13".equals(p)){
			company.setBiaoid("t_company");
			List<Company>list=companyDao.cunzhanghao(company);
				if(list!=null&&list.size()>0){
					return "4";//4为账号已存在
				}else{
					if(company.getFaren()!=null&&!"".equals(company.getFaren())){
						String[] arr = company.getFaren().split(",");
						company.setCardzheng(arr[0]);
						company.setCardfan(arr[1]);
					}
					company.setId(UUID.randomUUID().toString().replace("-", ""));
					companyDao.tosavecompany(company);	
					return "1";//1位注册成功
				}	
		}
		if("15".equals(p)){
			company.setBiaoid("t_company15");
			List<Company>list=companyDao.cunzhanghao(company);
			if(list!=null&&list.size()>0){
				return "4";//4为账号已存在
			}else{
				if(company.getFaren()!=null&&!"".equals(company.getFaren())){
					String[] arr = company.getFaren().split(",");
					company.setCardzheng(arr[0]);
					company.setCardfan(arr[1]);
				}
				company.setId(UUID.randomUUID().toString().replace("-", ""));
				companyDao.tosavecompany(company);	
				return "1";
			}	
		}
		if("17".equals(p)){
			company.setBiaoid("t_company17");
			List<Company>list=companyDao.cunzhanghao(company);
			if(list!=null&&list.size()>0){
				return "4";//4为账号已存在
			}else{
				if(company.getFaren()!=null&&!"".equals(company.getFaren())){
					String[] arr = company.getFaren().split(",");
					company.setCardzheng(arr[0]);
					company.setCardfan(arr[1]);
				}
				company.setId(UUID.randomUUID().toString().replace("-", ""));
				companyDao.tosavecompany(company);	
				return "1";
			}	
		}
		if("18".equals(p)){
			company.setBiaoid("t_company18");
			List<Company>list=companyDao.cunzhanghao(company);
			if(list!=null&&list.size()>0){
				return "4";//4为账号已存在
			}else{
				if(company.getFaren()!=null&&!"".equals(company.getFaren())){
					String[] arr = company.getFaren().split(",");
					company.setCardzheng(arr[0]);
					company.setCardfan(arr[1]);
				}
				company.setId(UUID.randomUUID().toString().replace("-", ""));
				companyDao.tosavecompany(company);	
				return "1";
			}	
		}
	
		return "3";//3为手机号不符合规则
		
		
		
	}


	@Override
	public String logincompany(Company company,HttpSession session) {
		
		if(company.getCphone()!=null&&!"".equals(company.getCphone())){
			String fphone=company.getCphone().substring(0, 2);
			if("13".equals(fphone)){
				company.setBiaoid("t_company");
				List<Company> list =companyDao.logincompany(company);
				if(list!=null&&list.size()>0){
					User use=new User();
					use.setPhone(list.get(0).getCphone());
					use.setPassword(list.get(0).getCpassword());
					use.setQuestionone(list.get(0).getId());
					use.setUsername(list.get(0).getCompanyname());
					use.setBiaoid(list.get(0).getBiaoid());
					session.setAttribute("user", use);
					session.setAttribute("companyname", list.get(0).getCompanyname());
					session.setAttribute("companyid", list.get(0).getId());
					session.setAttribute("biaoid", list.get(0).getBiaoid());
				
					return "1";//1为查询成功	
				}else{
					return "2";
				}	
			}	
			if("15".equals(fphone)){
				company.setBiaoid("t_company15");
				List<Company> list =companyDao.logincompany(company);
				if(list!=null&&list.size()>0){
					User use=new User();
					use.setPhone(list.get(0).getCphone());
					use.setPassword(list.get(0).getCpassword());
					use.setQuestionone(list.get(0).getId());
					use.setUsername(list.get(0).getCompanyname());
					session.setAttribute("user", use);
					session.setAttribute("companyname", list.get(0).getCompanyname());
					session.setAttribute("companyid", list.get(0).getId());
					session.setAttribute("biaoid", list.get(0).getBiaoid());
					
					return "1";//1为查询成功	
				}else{
					return "2";
				}	
			}	
			if("17".equals(fphone)){
				company.setBiaoid("t_company17");
				List<Company> list =companyDao.logincompany(company);
				if(list!=null&&list.size()>0){
					User use=new User();
					use.setPhone(list.get(0).getCphone());
					use.setPassword(list.get(0).getCpassword());
					use.setQuestionone(list.get(0).getId());
					use.setUsername(list.get(0).getCompanyname());
					session.setAttribute("user", use);
					session.setAttribute("companyname", list.get(0).getCompanyname());
					session.setAttribute("companyid", list.get(0).getId());
					session.setAttribute("biaoid", list.get(0).getBiaoid());
				
					return "1";//1为查询成功	
				}else{
					return "2";
				}	
			}	
			if("18".equals(fphone)){
				company.setBiaoid("t_company18");
				List<Company> list =companyDao.logincompany(company);
				if(list!=null&&list.size()>0){
					User use=new User();
					use.setPhone(list.get(0).getCphone());
					use.setPassword(list.get(0).getCpassword());
					use.setQuestionone(list.get(0).getId());
					use.setUsername(list.get(0).getCompanyname());
					session.setAttribute("user", use);
					session.setAttribute("companyname", list.get(0).getCompanyname());
					session.setAttribute("companyid", list.get(0).getId());
					session.setAttribute("biaoid", list.get(0).getBiaoid());
					
					return "1";//1为查询成功	
				}else{
					return "2";
				}	
			}	
		}
		
	return "3"	;
		
		
		
	}


	@Override
	public List<Tree> togetxiala() {
		List<Tree>list=companyDao.togetxiala();
		return list;
	}


	@Override
	public void buquancom(Company company) {
		
		
		
		companyDao.buquancom(company);
		
	}

	@Override
	public Integer selectcompanyjifen(String id, String biaoid) {
		Integer i=companyDao.selectcompanyjifen(id,biaoid);
		return i;
	}







	@Override
	public List<Company> queryCompanyById(String id) throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Company> list=new ArrayList<Company>();
		for (String biaoid : arr) {
			List<Company> list1=companyDao.queryCompanyById(id,biaoid);
			for (Company guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}


	@Override
	public List<Job> queryJobById(String id) throws Exception {
		return companyDao.queryJobById(id);
	}



	@Override
	public void updatejifen(String id, String biaoid, Integer xiaofei) {
		companyDao.updatejifen(id,biaoid,xiaofei);
		
	}
	
	/* (non-Javadoc)    
	 * @see com.jk.service.ICompanyService#updatejifenyk(java.lang.String)    
	 */
	@Override
	public void updatejifenyk(String id,String biaoid,Integer jifen) {
		companyDao.updatejifenyk(id,biaoid,jifen);
		
	}

/**
 * 修改积分
 */
	@Override
	public void updatejifentt(String id, String biaoid, Integer ioio) {
		companyDao.updatejifentt(id,biaoid,ioio);
	}


}
