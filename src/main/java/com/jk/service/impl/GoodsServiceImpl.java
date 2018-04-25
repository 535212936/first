package com.jk.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.activiti.engine.impl.bpmn.data.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.IGoodsDao;
import com.jk.model.BuyRecord;
import com.jk.model.Goods;
import com.jk.service.ICompanyService;
import com.jk.service.IGoodsService;

@Service
public class GoodsServiceImpl implements IGoodsService {
	
	@Autowired
	private ICompanyService companyService;
	
	@SuppressWarnings("unused")
	@Autowired
	private IGoodsDao goodsDao;
	@SuppressWarnings("unchecked")
	@Override
	public Integer togetgesshu(String id) throws ClassNotFoundException, IOException {
		List <Goods>selectredisList = (List<Goods>)common.util.GoodsRedis.selectredisList(id);
		Integer count=0;
		if(selectredisList!=null){
			for (Goods goods : selectredisList) {
				count+=goods.getScount();
			}	
		}
		return count;
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Goods> togetgouwuchelist(String id) throws ClassNotFoundException, IOException {
		List selectredisList = common.util.GoodsRedis.selectredisList(id);
		return selectredisList;
	}
	@SuppressWarnings("unchecked")
	@Override
	public void addredisList(String id, Goods goods) throws ClassNotFoundException, IOException {
		List <Goods>selectredisList = (List<Goods>)common.util.GoodsRedis.selectredisList(id);
		List <Goods>list1=selectredisList;
		if(selectredisList!=null){
			Integer flag=0; //为0时没有该商品;
			for (Goods goods2 : selectredisList) {
				if(Integer.valueOf(goods2.getSid())==Integer.valueOf(goods.getSid())){
					flag=1;//为1时已经有该商品
					goods2.setScount(goods2.getScount()+goods.getScount());
				
					common.util.GoodsRedis.insertredisList(id, selectredisList);
					break;
				}
			}
			if(flag==0){
				list1.add(goods);
				common.util.GoodsRedis.insertredisList(id, list1);
			}
		}else{
			List <Goods>list=new ArrayList<Goods>();
			list.add(goods);
			common.util.GoodsRedis.insertredisList(id, list);
		}
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public void updateredisup(String id, Goods goods) throws ClassNotFoundException, IOException {
		List <Goods>selectredisList = (List<Goods>)common.util.GoodsRedis.selectredisList(id);
		List <Goods>goodList=selectredisList;
		for (Goods goods2 : selectredisList) {
			if(Integer.valueOf(goods2.getSid())==Integer.valueOf(goods.getSid())){
				if(goods.getScount()==0){
					Integer i=selectredisList.indexOf(goods2);
					goodList.remove(goods2);
					common.util.GoodsRedis.insertredisList(id, goodList);
					break;
				}else{
					goods2.setScount(goods.getScount());
					
					common.util.GoodsRedis.insertredisList(id, selectredisList);
					break;
				}	
			}
		}
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public void deleteredis(String id, Goods goods) throws ClassNotFoundException, IOException {
		List <Goods>selectredisList = (List<Goods>)common.util.GoodsRedis.selectredisList(id);
		List<Goods> goodslist = new ArrayList<Goods>();
		for (Goods goods2 : selectredisList) {
			if(Integer.valueOf(goods2.getSid())==Integer.valueOf(goods.getSid())){
				//selectredisList.remove(goods2);
			}else{
				goodslist.add(goods2);			
			}
		}
		common.util.GoodsRedis.insertredisList(id, goodslist);
	}
	@Override
	public void deleteallredis(String id) {
		common.util.GoodsRedis.deleteList(id);	
	}
	@SuppressWarnings("unchecked")
	@Override
	public Integer buygoods(String id,HttpSession session) throws ClassNotFoundException, IOException {
		List <Goods>selectredisList = (List<Goods>)common.util.GoodsRedis.selectredisList(id);
		String biaoid=(String) session.getAttribute("biaoid");
		Integer jifen=companyService.selectcompanyjifen(id, biaoid);
		List <BuyRecord>buyrecordList=new ArrayList();
		Integer xiaofei=0;
		for (Goods goods : selectredisList) {
			BuyRecord buyrecord=new BuyRecord();
			xiaofei+=Integer.valueOf(goods.getSprice())*Integer.valueOf(goods.getScount());
			buyrecord.setGoodid(goods.getSid());
			buyrecord.setGoodcount(goods.getScount());
			buyrecord.setUserid(id);
			buyrecord.setStatus(1);
			buyrecord.setId(UUID.randomUUID().toString().replace("-", ""));
			buyrecord.setBuytime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
			buyrecordList.add(buyrecord);
		}
		if(xiaofei>jifen){
			return 2;
		}
		for (BuyRecord buyRecord2 : buyrecordList) {
			goodsDao.saveju(buyRecord2);
		}
		companyService.updatejifen(id,biaoid,xiaofei);
		common.util.GoodsRedis.deleteList(id);
		return 1;
	}
	
	
	
	/**
	 * 查询已完成订单（孙国锦）
	 */
	@Override
	public List<BuyRecord> queryGoods(String id) throws Exception {
		return goodsDao.queryGoods(id);
	}
	/**
	 * 删除已完成订单（孙国锦）
	 */
	@Override
	public Integer deleteorder(String id) throws Exception {
		return goodsDao.deleteorder(id);
	}

	//段家豪 积分商城
	@Override
	public List<Goods> goodslist(Goods goods) {
		List<Goods> list=goodsDao.goodslist(goods);
		return list;
	}
	@Override
	public Goods selectbyid(Integer id) {
		Goods goods=goodsDao.selectbyid(id);
		return goods;
	}
	@Override
	public List<BuyRecord> querygoodsById(String uid, Integer gid) throws Exception {
		return goodsDao.querygoodsById(uid,gid);
	}
	@Override
	public void updatestatus(BuyRecord buy) {
		goodsDao.updatdestatus(buy);
	}
	@Override
	public List<Goods> goodslist1(Goods goods) {
		return goodsDao.goodslist1(goods);
	}
	@Override
	public List<Goods> goodslist2(Goods goods) {
		return goodsDao.goodslist2(goods);
	}
	@Override
	public List<Goods> goodslist3(Goods goods) {
		return goodsDao.goodslist3(goods);
	}
	@Override
	public List<Goods> goodslist4(Goods goods) {
		return goodsDao.goodslist4(goods);
	}
	@Override
	public List<Goods> goodslist5(Goods goods) {
		return goodsDao.goodslist5(goods);
	}
	@Override
	public List<Goods> goodslist6(Goods goods) {
		return goodsDao.goodslist6(goods);
	}
	@Override
	public List<Goods> goodslist7(Goods goods) {
		return goodsDao.goodslist7(goods);
	}
	@Override
	public List<Goods> goodslist8(Goods goods) {
		return goodsDao.goodslist8(goods);
	}
	@Override
	public List<Goods> goodslist9(Goods goods) {
		return goodsDao.goodslist9(goods);
	}
	@Override
	public List<Goods> goodslist10(Goods goods) {
		return goodsDao.goodslist10(goods);
	}
	@Override
	public List querygoodname(String userid) {
		return goodsDao.querygoodname(userid);
	}

}