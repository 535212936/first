/** 
 * <pre>项目名称:mongo-spring 
 * 文件名称:LogRecord.java 
 * 包名:com.jk.common.aopAspect 
 * 创建日期:2018年3月19日下午2:50:05 
 * Copyright (c) 2018,yangpei310@163.com All Rights Reserved.</pre> 
 */  
package common.aopAspect;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.reflect.CodeSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import com.jk.model.BuyRecord;
import com.jk.model.Logs;

/** 
 * <pre>项目名称：mongo-spring    
 * 类名称：LogRecord    
 * 类描述：    
 * 创建人：朱义龙    
 * 创建时间：2018年3月19日 下午2:50:05    
 * 修改人：朱义龙    
 * 修改时间：2018年3月19日 下午2:50:05    
 * 修改备注：       
 * @version </pre>    
 */
public class LogRecord {
	
	private Logger logger=Logger.getLogger(LogRecord.class);
	@Autowired
	private MongoTemplate mongoTemplate;
	
	private Long startTime;
	private Long endTime;
	
	public void beforeThead(){
		//startTime=new Date().getTime();
		System.out.println("前置调用");
	}
	
	public void afterThead(JoinPoint jp,Object retValue){
		endTime=new Date().getTime();
		System.out.println("后置调用");
		//Long time=(endTime-startTime)/1000;
		//类名
		String clazzName=null;
		try {
			clazzName = Class.forName(jp.getTarget().getClass().getName()).getSimpleName();
			//System.out.println("在类名为"+clazzName+"，方法名为"+jp.getSignature().getName()+"的方法运行时间为"+time+"秒");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		//方法名
		String methodName = jp.getSignature().getName();
		
		    Object[] paramValues = jp.getArgs();  
		    String[] paramNames = ((CodeSignature) jp.getSignature()).getParameterNames();  
		    String params=null;
		    for(int i=0;i<paramNames.length;i++){  
		    	params+=paramNames[i]+":"+paramValues[i]+",";  
		    } 
		    
		Logs logs=new Logs();
		logs.setParams(params);
		logs.setClazzName(clazzName);
		logs.setMethodName(methodName);
		//System.out.println(retValue.toString());
		mongoTemplate.insert(logs);
		
		logger.info("类名:"+clazzName+",方法名:"+methodName+"参数与参数名:"+params);
	}
	  public void throwThead(JoinPoint jp,Object retValue){
			endTime=new Date().getTime();
			System.out.println("异常通知");
			//Long time=(endTime-startTime)/1000;
			//类名
			String clazzName=null;
			try {
				clazzName = Class.forName(jp.getTarget().getClass().getName()).getSimpleName();
				//System.out.println("在类名为"+clazzName+"，方法名为"+jp.getSignature().getName()+"的方法运行时间为"+time+"秒");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			//方法名
			String methodName = jp.getSignature().getName();
			
			    Object[] paramValues = jp.getArgs();  
			    String[] paramNames = ((CodeSignature) jp.getSignature()).getParameterNames();  
			    String params=null;
			    for(int i=0;i<paramNames.length;i++){  
			    	params+=paramNames[i]+":"+paramValues[i]+",";  
			    } 
			    
			Logs logs=new Logs();
			logs.setParams(params);
			logs.setClazzName(clazzName);
			logs.setMethodName(methodName+"发生异常");
			//System.out.println(retValue.toString());
			mongoTemplate.insert(logs);
			logger.info("类名:"+clazzName+",方法名:"+methodName+"参数与参数名:"+params);
		}
	  public  void togetmongo(){
		  String id = "5ad97369da0c4ac7873f61245d0643a2";
	        Query query = new Query();
	        Criteria criteria = Criteria.where("userid").is(id);
	        query.addCriteria(criteria);
	        
	        
	        List<BuyRecord> find = mongoTemplate.find(query,BuyRecord.class);
	        for (BuyRecord buyRecord : find) {
				System.out.println(buyRecord);
			}
	  }

}