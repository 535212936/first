package com.jk.controller;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.BuyRecord;
import com.jk.model.Goods;
import com.jk.service.IGoodsService;

import common.aopAspect.CommentRecord;

@Controller
@RequestMapping("/goodsController")
public class GoodsController {
	@Autowired
	IGoodsService goodsService;
	/**
	 * <pre>togetgesshu(返回购物车商品个数)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月27日 下午5:05:54    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月27日 下午5:05:54    
	 * 修改备注： 
	 * @param id
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/togetgesshu")
	@ResponseBody
	public String togetgesshu(String id) throws ClassNotFoundException, IOException{
		Integer count=goodsService.togetgesshu(id);
		return ""+count;	
	}
	/**
	 * <pre>togetgouwuchelist(获取购物车列表)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月27日 下午5:09:27    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月27日 下午5:09:27    
	 * 修改备注： 
	 * @param id
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/selectredisList")
	@ResponseBody
	public List togetgouwuchelist(String id) throws ClassNotFoundException, IOException{
		List<Goods>list=goodsService.togetgouwuchelist(id);
		return list;	
	}
	/**
	 * <pre>addredisList(加入购物车)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月27日 下午7:02:30    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月27日 下午7:02:30    
	 * 修改备注： 
	 * @param id
	 * @param goods
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/addredisList")
	@ResponseBody
	public String addredisList(String id,Integer gid) throws ClassNotFoundException, IOException{
		Goods goods=goodsService.selectbyid(gid);
		
		goodsService.addredisList(id,goods);
		return ""+1;	
	}
	/**
	 * <pre>updateredisup(修改购物车中商品数量)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月27日 下午7:31:34    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月27日 下午7:31:34    
	 * 修改备注： 
	 * @param id
	 * @param goods
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/updateredisup")
	@ResponseBody
	public String updateredisup(String id,Integer sid,Integer scount,Goods goods) throws ClassNotFoundException, IOException{
		goods.setScount(scount);
		goods.setSid(sid);
		goodsService.updateredisup(id,goods);
		return ""+1;	
	}
	/**
	 * <pre>deleteredis(删除购物车中的商品)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月27日 下午8:11:20    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月27日 下午8:11:20    
	 * 修改备注： 
	 * @param id
	 * @param goods
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/deleteredis")
	@ResponseBody
	public String deleteredis(String id,Integer sid,Goods goods) throws ClassNotFoundException, IOException{
		goods.setSid(sid);
		goodsService.deleteredis(id,goods);
		return ""+1;	  
	}
	/**
	 * <pre>deleteallredis(删除购物车)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月28日 下午3:55:00    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月28日 下午3:55:00    
	 * 修改备注： 
	 * @param id
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/deleteallredis")
	@ResponseBody
	public String deleteallredis(String id) throws ClassNotFoundException, IOException{
		
		goodsService.deleteallredis(id);
		return ""+1;	  
	}
	/**
	 * <pre>buygoods(购买)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月28日 下午3:55:48    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月28日 下午3:55:48    
	 * 修改备注： 
	 * @param id
	 * @param session
	 * @return
	 * @throws ClassNotFoundException
	 * @throws IOException</pre>
	 */
	@RequestMapping("/buygoods")
	@ResponseBody
	public String buygoods(String id,HttpSession session) throws ClassNotFoundException, IOException{
		
		Integer i=goodsService.buygoods(id,session);
		return ""+i;	  
	}
	
	
	/**
	 * <pre>queryGoods(查询已完成订单)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月28日 下午3:58:29    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月28日 下午3:58:29    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="queryGoods")
	@ResponseBody
	public List<BuyRecord> queryGoods(String id){
		List<BuyRecord> glist= null;
		try {
			glist = goodsService.queryGoods(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return glist;
	}
	
	/**
	 * <pre>deleteorder(删除已完成的订单记录)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月28日 下午4:57:59    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月28日 下午4:57:59    
	 * 修改备注： 
	 * @param id
	 * @return</pre>
	 */
	@RequestMapping(value="deleteorder")
	@ResponseBody
	public String deleteorder(String id){
		Integer i = 0;
		try {
			i = goodsService.deleteorder(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(i>0){
			return "success";
		}
		return "fail";
	}
	
	
	
	
	
	
	
	
	
	//段家豪  积分商城展示
	@RequestMapping(value="goodslist")
	@ResponseBody
	public List<Goods> goodslist(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示1
	@RequestMapping(value="goodslist1")
	@ResponseBody
	public List<Goods> goodslist1(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist1(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示2
	@RequestMapping(value="goodslist2")
	@ResponseBody
	public List<Goods> goodslist2(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist2(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示3
	@RequestMapping(value="goodslist3")
	@ResponseBody
	public List<Goods> goodslist3(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist3(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示4
	@RequestMapping(value="goodslist4")
	@ResponseBody
	public List<Goods> goodslist4(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist4(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示5
	@RequestMapping(value="goodslist5")
	@ResponseBody
	public List<Goods> goodslist5(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist5(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示6
	@RequestMapping(value="goodslist6")
	@ResponseBody
	public List<Goods> goodslist6(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist6(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示7
	@RequestMapping(value="goodslist7")
	@ResponseBody
	public List<Goods> goodslist7(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist7(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示8
	@RequestMapping(value="goodslist8")
	@ResponseBody
	public List<Goods> goodslist8(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist8(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示9
	@RequestMapping(value="goodslist9")
	@ResponseBody
	public List<Goods> goodslist9(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist9(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪  积分商城展示10
	@RequestMapping(value="goodslist10")
	@ResponseBody
	public List<Goods> goodslist10(Goods goods){
		List<Goods> json = new ArrayList<Goods>();
		try {
			json = goodsService.goodslist10(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	} 
	//段家豪 商品信息弹框
	@RequestMapping(value="selectbyid")
	public String selectbyid(Integer id,HttpServletRequest req){
		
		Goods goods=goodsService.selectbyid(id);
		
		req.setAttribute("goods", goods);
		
		return"jfsc/shangpinxiangqing";
	}
	
	@RequestMapping(value="tiaozhuan")
	public String tiaozhuan(String uid , Integer gid,HttpServletRequest req){
		req.setAttribute("uid", uid);
		req.setAttribute("gid", gid);
		return "pinglun";
	}
	
	
	
	/**
	 * <pre>querygoodsById(根据ID查询商品信息进行评论)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月29日 上午9:44:23    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月29日 上午9:44:23    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="querygoodsById")
	@ResponseBody
	public List<BuyRecord> querygoodsById(String uid , Integer gid){
		List<BuyRecord> br = null;
		try {
			br = goodsService.querygoodsById(uid,gid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return br;
	}
	
	
	
	/**
	 * <pre>addcomment(新增评论信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月29日 下午5:03:49    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月29日 下午5:03:49    
	 * 修改备注： 
	 * @param buy
	 * @return</pre>
	 */
	@RequestMapping(value="addcomment")
	@ResponseBody
	public String addcomment(BuyRecord buy){
		CommentRecord comm = new CommentRecord();
		//根据用户ID查询商品名称
		String userid = buy.getUserid();
		List<BuyRecord> list = goodsService.querygoodname(userid);
		for (int i = 0; i < list.size(); i++) {
			if(buy.getGoodid() == list.get(i).getGoodid()){
				buy.setGoodname(list.get(i).getGoodname());
				}
		}
		/*list.get(0)
		for (BuyRecord object : list) {
			if(buy.getGoodid() == list.get(0).getGoodid()){
			buy.setGoodname(object.getGoodname());
			}
		}*/
		String addcomment=null;
		try {
			addcomment = comm.addcomment(buy);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(addcomment != null){
			buy.setStatus(2);
			goodsService.updatestatus(buy);
		}
		return addcomment;
	}
	
	
	/**
	 * <pre>tiaozhuan(页面跳转)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月30日 上午10:06:08    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月30日 上午10:06:08    
	 * 修改备注： 
	 * @param id
	 * @param rewq
	 * @return</pre>
	 */
	@RequestMapping(value="tiaozhuanym")
	public String tiaozhuan(String id,HttpServletRequest req){
		req.setAttribute("id", id);
		return "userComment";
	}
	
	
	
	
	
	
	/**
	 * <pre>querycommentByUserid(根据用户ID查询用户所有的评论信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月29日 下午5:04:46    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月29日 下午5:04:46    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="querycommentByUserid")
	@ResponseBody
	public List<BuyRecord> querycommentByUserid(String id){
		CommentRecord comm = new CommentRecord();
		List<BuyRecord> querycomment=null;
		try {
			querycomment = comm.querycomment(id);
		} catch (UnknownHostException | IllegalArgumentException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return querycomment;
	}
	
	
	/**
	 * <pre>queryCommentByGoodid(根据商品ID查询商品的全部评论信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月29日 下午5:05:29    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月29日 下午5:05:29    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="queryCommentByGoodid")
	@ResponseBody
	public 	List<BuyRecord> queryCommentByGoodid(Integer id){
		CommentRecord comm = new CommentRecord();
		List<BuyRecord> querycomment=null;
		try {
			querycomment = comm.querycommentByGoodId(id);
		} catch (UnknownHostException | IllegalArgumentException | IllegalAccessException e) {
			e.printStackTrace();
		}
		
		return querycomment;
	}
	
	
}