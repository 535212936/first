package com.jk.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.jk.model.BuyRecord;
import com.jk.model.Goods;

public interface IGoodsService {

	Integer togetgesshu(String id) throws ClassNotFoundException, IOException;

	List<Goods> togetgouwuchelist(String id) throws ClassNotFoundException, IOException;

	void addredisList(String id, Goods goods) throws ClassNotFoundException, IOException;

	void updateredisup(String id, Goods goods) throws ClassNotFoundException, IOException;

	void deleteredis(String id, Goods goods) throws ClassNotFoundException, IOException;
	//段家豪 积分商城
	List<Goods> goodslist(Goods goods);
	List<Goods> goodslist1(Goods goods);
	List<Goods> goodslist2(Goods goods);
	List<Goods> goodslist3(Goods goods);
	List<Goods> goodslist4(Goods goods);
	List<Goods> goodslist5(Goods goods);
	List<Goods> goodslist6(Goods goods);
	List<Goods> goodslist7(Goods goods);
	List<Goods> goodslist8(Goods goods);
	List<Goods> goodslist9(Goods goods);
	List<Goods> goodslist10(Goods goods);

	Goods selectbyid(Integer id);

	void deleteallredis(String id);

	Integer buygoods(String id, HttpSession session) throws ClassNotFoundException, IOException;

	List<BuyRecord> queryGoods(String id)throws Exception;

	Integer deleteorder(String id)throws Exception;
	//孙国锦  根据ID查询商品信息进行评论
	List<BuyRecord> querygoodsById(String uid, Integer gid)throws Exception;
	//评论成功后修改评论状态
	void updatestatus(BuyRecord buy);
	//根据用户ID 查询商品名称
	List querygoodname(String userid);

}