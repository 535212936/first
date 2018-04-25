package com.jk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;




import com.jk.model.Goods;


import com.jk.model.BuyRecord;


public interface IGoodsDao {


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

	Goods selectbyid(@Param("id") Integer id);

	void saveju(BuyRecord buyrecord);

	List<BuyRecord> queryGoods(@Param("id") String id)throws Exception;

	Integer deleteorder(@Param("id") String id);
	// 孙国锦  根据ID 查询商品信息进行评论
	List<BuyRecord> querygoodsById(@Param("uid") String uid, @Param("gid") Integer gid)throws Exception;
	// 评论成功后修改状态
	void updatdestatus(@Param("buy") BuyRecord buy);
	List querygoodname(@Param("userid") String userid);

}
