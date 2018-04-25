package com.jk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Company;
import com.jk.model.Guanggao;
import com.jk.model.Job;

public interface IGuanggaoMapper {


	List<Guanggao> queryGuanggao(Guanggao gg)throws Exception;

	long querycount(@Param("gg") Guanggao gg)throws Exception;

	List<Company> queryselect()throws Exception;

	Integer addguanggao(Guanggao gg)throws Exception;

	List<Guanggao> guanggaolist(@Param("gg") Guanggao gg)throws Exception;

	List<Company> queryGuanggao11(@Param("biaoid") String biaoid);
	//查询公司详细信息
	List<Company> querycompanyjob(@Param("biaoid") String biaoid, @Param("id") String id);
	//查询公司发布职位
	List<Job> queryCompanyFabuJob(@Param("id") String id);



}
