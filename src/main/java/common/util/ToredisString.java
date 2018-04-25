package common.util;

import java.util.Set;



import redis.clients.jedis.Jedis;

public class ToredisString {

	/**
	 * 这是redis中的String数据类型的增删改查
	 */
	
	public static void insertString(String uip,String phone){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.233",6379);
		//2.验证密码
		//jedis.auth("123456");
		//选择数据库
	//	jedis.select(15);
		//3.做增删改查的操作了
		jedis.set(uip, phone);
	
		//4.关闭连接
		jedis.close();
	}
	

	public static void deleteString(){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.233",6379);
		//2.验证密码
		jedis.auth("123456");
		//3.操作删除
		//jedis.del("name");
		//设置过期时间删除
		jedis.expire("name", 20);
		//4.关闭
		jedis.close();
	}

	public static void updateString(){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.233",6379);
		//2.验证密码
		jedis.auth("123456");
		//修改操作
		//jedis.set("name", "胖大海");
		jedis.append("name", "不好喝");
		//4.关闭
		jedis.close();
	}
	

	public static String selectString(String uip){
		//1.连接redis服务  参数为ip地址和端口号
		Jedis jedis =new Jedis("192.168.31.233",6379);
		//2.验证密码
		//jedis.auth("123456");
		//修改操作
		//jedis.set("name", "胖大海");
		 String keys = jedis.get(uip);
	/*	 for (String string : keys) {
			//System.out.println(string);
			System.out.println(jedis.get(string));
		}*/
		//4.关闭
		jedis.close();
		return keys;
	}
	
	
}