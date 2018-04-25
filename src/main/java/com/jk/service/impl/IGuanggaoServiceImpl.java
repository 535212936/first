package com.jk.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.jk.dao.IGuanggaoMapper;
import com.jk.model.Company;
import com.jk.model.Guanggao;
import com.jk.model.Job;
import com.jk.service.IGuanggaoService;
@Service
public class IGuanggaoServiceImpl implements IGuanggaoService {

	@Autowired
	private IGuanggaoMapper ggDao;

	@Override
	public List<Guanggao> queryGuanggao(Guanggao gg) throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Guanggao>list=new ArrayList<Guanggao>();
		for (String biaoid : arr) {
			gg.setBiaoid(biaoid);
			List<Guanggao> list1=ggDao.queryGuanggao(gg);
			for (Guanggao guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}

	@Override
	public List<Company> queryselect() throws Exception {
		
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Company>list=new ArrayList<Company>();
		for (String biaoid : arr) {
			
			List<Company> list1=ggDao.queryGuanggao11(biaoid);
			for (Company guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}


	@Override
	public Integer addguanggao(Guanggao gg) throws Exception {
		return ggDao.addguanggao(gg);
	}

	@Override
	public List<Guanggao> guanggaolist(Guanggao gg) throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Guanggao>list=new ArrayList<Guanggao>();
		for (String biaoid : arr) {
			gg.setBiaoid(biaoid);
			List<Guanggao> list1=ggDao.guanggaolist(gg);
			for (Guanggao guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}


	
	/**
	 * 查询公司详细信息及发布职位
	 */
	@Override
	public List<Company> querycompanyjob(String id) throws Exception {
		String [] arr ={"t_company","t_company15","t_company17","t_company18"};
		List<Company> list=new ArrayList<Company>();
		for (String biaoid : arr) {
			List<Company> list1=ggDao.querycompanyjob(biaoid,id);
			for (Company guanggao : list1) {
				list.add(guanggao);
			}
		}
		return list;
	}

	@Override
	public List<Job> queryCompanyFabuJob(String id) throws Exception {
		return ggDao.queryCompanyFabuJob(id);
	}
	
}
