package common.util;

import java.io.IOException;
import java.io.NotSerializableException;
import java.util.List;
import java.util.Set;



import com.jk.model.Goods;
import com.mchange.v2.ser.SerializableUtils;

import redis.clients.jedis.Jedis;

public class GoodsRedis {

	/**
	 * 这是list的增删改查操作
	 */
	
	
	public static void insertList(){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		jedis.auth("123456");
		//3操作
		//jedis.lpush("ids", "1 2 3 4");
//		jedis.lpush("idss", "6","7","9","10");
//		jedis.rpush("idss", "112","34","56");
	//	jedis.lpushx("id", "666");
		//4.关闭连接
	    jedis.close();
	}
	public static void insertredisList(String id,List<Goods> list) throws NotSerializableException{
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		//jedis.auth("123456");
		//3操作
		//jedis.lpush("ids", "1 2 3 4");
//		jedis.lpush("idss", "6","7","9","10");
//		jedis.rpush("idss", "112","34","56");
		//	jedis.lpushx("id", "666");
		//4.关闭连接
		jedis.select(2);
		jedis.set(id.getBytes(), SerializableUtils.serializeToByteArray(list));
		
		
		
		
		jedis.close();
		System.out.println("成功");
	}
	public static List selectredisList(String id) throws ClassNotFoundException, IOException{
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		//jedis.auth("123456");
		//3操作
		//jedis.lpush("ids", "1 2 3 4");
//		jedis.lpush("idss", "6","7","9","10");
//		jedis.rpush("idss", "112","34","56");
		//	jedis.lpushx("id", "666");
		//4.关闭连接
		jedis.select(2);
		if(jedis.exists(id.getBytes())){
			 byte[] in = jedis.get(id.getBytes());  
		        List<Goods> list = (List<Goods>) SerializableUtils.fromByteArray(in); 
			jedis.close();
			System.out.println("成功");
			return list;
		}else{
			return null;
		}
		
	}
	
	
	public static void deleteList(String id){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		//jedis.auth("123456");	
		//操作
		//jedis.lpop("idss");
		//jedis.rpop("idss");
		//jedis.lrem("idss", 1, "6");
		//jedis.expire("idss", 10);
		jedis.select(2);
		jedis.del(id);
		//4.关闭连接
	    jedis.close();
	}
	
	

	public static void updateList(){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		jedis.auth("123456");	
		//操作
		jedis.lset("ids", 0, "888");
		//4.关闭连接
	    jedis.close();
	}
	

	public static void selectList(){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.234",6379);
		//2.验证密码
		jedis.auth("123456");	
		//操作
		Set<String> keys = jedis.keys("*");
		for (String string : keys) {
			if(jedis.type(string).equals("list")){
				Long llen = jedis.llen(string);
				System.out.println(jedis.lrange(string, 0, llen));
			}else{
				System.out.println(jedis.get(string));
			}
		}
		
		//4.关闭连接
	    jedis.close();
	}
	
}