package com.jk.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Company;
import com.jk.model.Guanggao;
import com.jk.model.Job;

public interface IGuanggaoService {

	List<Guanggao> queryGuanggao(Guanggao gg)throws Exception;

	List<Company> queryselect()throws Exception;

	Integer addguanggao(Guanggao gg)throws Exception;

	List<Guanggao> guanggaolist(Guanggao gg)throws Exception;
	//查询公司详细信息及发布职位
	List<Company> querycompanyjob(String id)throws Exception;
	//查询公司发布的职位
	List<Job> queryCompanyFabuJob(String id)throws Exception;

}
