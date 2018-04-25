package common.aopAspect;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.beans.BeanMap;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.jk.model.BuyRecord;
import com.mongodb.*; //com.mongodb包类似于java.sql，大多数与数据库相关的类都在这里  

import common.util.Mongodb;
  
public class CommentRecord {  
  
	@Autowired
	private MongoTemplate mongoTemplate;
	
	
    public String addcomment(BuyRecord buy) throws Exception { 
        //Mongo是与java.sql.Connection同等级别的概念，  
        Mongo mongo = new Mongo();  
  
        //DB类用来表示一个数据库，如果数据库不存在则创建一个  
        DB db = mongo.getDB( "test" );   
        //DBCollection类用来存放对象，类似数据库表的概念  
        DBCollection coll = db.getCollection("testCollection");  
        DBObject bean2dbObject = Mongodb.bean2DBObject(buy);
        //插入DBCollection中的对象必需实现DBObject接口(见User类的注释)  
        if(bean2dbObject != null){
            coll.insert(bean2dbObject);
            return "true";
        }else{
        	return "false";
        }
  
    }  
    
    
    
    
    public List<BuyRecord> querycomment(String id) throws UnknownHostException, IllegalArgumentException, IllegalAccessException{
    	//Mongo是与java.sql.Connection同等级别的概念，  
        Mongo mongo = new Mongo();  
        BuyRecord buy = new BuyRecord();
        //DB类用来表示一个数据库，如果数据库不存在则创建一个  
        DB db = mongo.getDB( "test" );   
        //DBCollection类用来存放对象，类似数据库表的概念  
        DBCollection coll = db.getCollection("testCollection");  
    	BasicDBObject searchQuery = new BasicDBObject();  
        searchQuery.put("userid", id);  

        DBCursor cursor = coll.find(searchQuery);
        List<BuyRecord> rlist = new ArrayList<BuyRecord>();
        while (cursor.hasNext()) {  
            //System.out.println(cursor.next().toMap());  
            BuyRecord buyr = new BuyRecord();
            BeanMap beanMap = BeanMap.create(buyr);
            beanMap.putAll(cursor.next().toMap());
            rlist.add(buyr);
        } 
        
        
        return rlist;
    	
    }

    public List<BuyRecord> querycommentByGoodId(Integer id) throws UnknownHostException, IllegalArgumentException, IllegalAccessException{
    	//Mongo是与java.sql.Connection同等级别的概念，  
    	Mongo mongo = new Mongo();  
    	BuyRecord buy = new BuyRecord();
    	//DB类用来表示一个数据库，如果数据库不存在则创建一个  
    	DB db = mongo.getDB( "test" );   
    	//DBCollection类用来存放对象，类似数据库表的概念  
    	DBCollection coll = db.getCollection("testCollection");  
    	BasicDBObject searchQuery = new BasicDBObject();  
    	searchQuery.put("goodid", id);  
    	
    	DBCursor cursor = coll.find(searchQuery);
    	List<BuyRecord> rlist = new ArrayList<BuyRecord>();
    	while (cursor.hasNext()) {  
    		//System.out.println(cursor.next().toMap());  
    		BuyRecord buyr = new BuyRecord();
    		BeanMap beanMap = BeanMap.create(buyr);
    		beanMap.putAll(cursor.next().toMap());
    		rlist.add(buyr);
    	} 
    	
    	
    	return rlist;
    	
    }



  
    
}