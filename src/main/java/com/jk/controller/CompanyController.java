package com.jk.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.Company;
import com.jk.model.Job;
import com.jk.model.Tree;
import com.jk.service.ICompanyService;
/**
 * 
 * <pre>项目名称：ssm-jobs    
 * 类名称：CompanyController    
 * 类描述：    
 * 创建人：changlutong
 * 创建时间：2018年3月22日 下午7:22:15    
 * 修改人：changlutong    
 * 修改时间：2018年3月22日 下午7:22:15    
 * 修改备注：       
 * @version </pre>
 */
@Controller
@RequestMapping("/companyController")
public class CompanyController {
	@Autowired
	private ICompanyService companyService;
	
	/**
	 * <pre>upfile(上传公司证件)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月22日 下午7:23:22    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月22日 下午7:23:22    
	 * 修改备注： 
	 * @return</pre>
	 * @throws IOException 
	 */
	@RequestMapping("/upfile")
	@ResponseBody
	public Object upfile(@RequestParam("file") MultipartFile[] files) throws IOException{
		
		JSONObject json = new JSONObject();
		String info = "";
		Map<String ,String> map = new HashMap<String ,String>();
        ArrayList<Integer> arr = new ArrayList<>();
        String urls="";
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];

            if (!file.isEmpty()) {
                InputStream in = null;
                OutputStream out = null;

                try {
                    String rootPath = System.getProperty("catalina.home");
                    File dir = new File(rootPath + File.separator + "tmpFiles");
                    if (!dir.exists())
                        dir.mkdirs();
                    File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
                    in = file.getInputStream();
                    out = new FileOutputStream(serverFile);
                    byte[] b = new byte[1024];
                    int len = 0;
                    while ((len = in.read(b)) > 0) {
                        out.write(b, 0, len);
                    }
                    out.close();
                    in.close();
                    json.put("url",serverFile.toString());
                    map.put("url", "fileimage\\"+file.getOriginalFilename());
                    urls+=serverFile.toString();
                    info = serverFile.toString();

                } catch (Exception e) {
                    arr.add(i);
                } finally {
                    if (out != null) {
                        out.close();
                        out = null;
                    }

                    if (in != null) {
                        in.close();
                        in = null;
                    }
                }
            } else {
                arr.add(i);
            }


        }

        if(arr.size() > 0) {
        	json.put("info", "ERROR");
        	map.put("info","ERROR");

        } else {
        	json.put("info", "SUCCESS");
        	map.put("info","SUCCESS");

        }
        return map;
    }
		
	/**
	 * <pre>getyanzhengma(发送验证码)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月22日 下午8:53:25    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月22日 下午8:53:25    
	 * 修改备注： 
	 * @param phone
	 * @param session
	 * @return
	 * @throws IOException</pre>
	 */
	@RequestMapping("/getyanzhengma")
	@ResponseBody
	public String getyanzhengma(String phone,HttpSession session) throws IOException{
		String ccode = common.util.HttpClient.togetString(phone);
		session.setAttribute("ccode", ccode);
		session.setAttribute("fasongtime", new Date().getTime());
		return ""+1;
	}	
	/**
	 * <pre>tosavecompany(新增公司)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月26日 下午2:34:48    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月26日 下午2:34:48    
	 * 修改备注： 
	 * @param company
	 * @param session
	 * @return
	 * @throws IOException</pre>
	 */
	@RequestMapping("/tosavecompany")
	@ResponseBody
	public String tosavecompany(Company company,HttpSession session) throws IOException{
		Long fasongtime=(Long) session.getAttribute("fasongtime");
		Long shijiancha=(new Date().getTime()-fasongtime)/1000;
		String code=(String) session.getAttribute("ccode");
		if(shijiancha>60){
			return "5";//5为验证码超时或错误
		}else{
			if(company.getYcode()!=null&&!"".equals(company.getYcode())&&code!=null&&!"".equals(code)&&code.equals(company.getYcode())){
				String flag=companyService.tosavecompany(company);
			return flag;	
			}else{
				return "5";
			}	
		}
	}
	/**
	 * <pre>logincompany(公司登陆)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月26日 下午2:35:03    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月26日 下午2:35:03    
	 * 修改备注： 
	 * @param company
	 * @param session
	 * @return
	 * @throws UnknownHostException</pre>
	 */
	@RequestMapping("/logincompany")
	@ResponseBody
	public String logincompany(Company company,HttpSession session) throws UnknownHostException{
		if(company.getAnone()!=null&&!"".equals(company.getAnone())){
			 String localip=null;
			 String localname=null;
			 String local=null;
			//获取电脑ip
			InetAddress myip;
			myip = InetAddress.getLocalHost();
			localip=myip.getHostAddress();
			localname=myip.getHostName();
			local=myip.toString();
			common.util.ToredisString.insertString(local, company.getCphone());
		}
		String i=companyService.logincompany(company,session);
		
		return i;
	}
	/**
	 * <pre>togetxiala(获得验证问题)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月26日 下午2:35:16    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月26日 下午2:35:16    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("/togetxiala")
	@ResponseBody
	public List<Tree> togetxiala(){
		
		List<Tree>list=companyService.togetxiala();
		
		return list;
	}	
	/**
	 * <pre>buquancom(公司信息补全)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月26日 下午2:35:47    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月26日 下午2:35:47    
	 * 修改备注： 
	 * @param company
	 * @return</pre>
	 */
	@RequestMapping("/buquancom")
	@ResponseBody
	public String buquancom(Company company){
		
		companyService.buquancom(company);
		
		return ""+1;
	}	
	/**
	 * <pre>toselredis(去除redis记录的账号)   
	 * 创建人：changlutong 756335549@qq.com
	 * 创建时间：2018年3月26日 下午2:36:04    
	 * 修改人：changlutong 756335549@qq.com
	 * 修改时间：2018年3月26日 下午2:36:04    
	 * 修改备注： 
	 * @return
	 * @throws UnknownHostException</pre>
	 */
	@RequestMapping("/toselredis")
	@ResponseBody
	public String toselredis() throws UnknownHostException{
		 String localip=null;
		 String localname=null;
		 String local=null;
		//获取电脑ip
		InetAddress myip;
		myip = InetAddress.getLocalHost();
		localip=myip.getHostAddress();
		localname=myip.getHostName();
		local=myip.toString();
		String phone = common.util.ToredisString.selectString(local);
		
		return phone;
	}	

	/**
	 * <pre>queryCompanyById(查询公司信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月26日 下午8:16:51    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月26日 下午8:16:51    
	 * 修改备注： 
	 * @param id
	 * @param req
	 * @return</pre>
	 */
	
	/**
	 * <pre>queryJobById(查询公司发布的职位信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月26日 下午8:17:06    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月26日 下午8:17:06    
	 * 修改备注： 
	 * @param id
	 * @return</pre>
	 */
	@RequestMapping(value="queryJobById")
	@ResponseBody
	public List<Job> queryJobById(String id){
		List<Job> jlist = null;
		try {
			jlist = companyService.queryJobById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jlist;
	}
	/**
	 * <pre>zhuxiaoclt(注销公司)   
	 * 创建人：袁康 1056079234@qq.com
	 * 创建时间：2018年3月28日 下午3:47:13    
	 * 修改人：袁康 1056079234@qq.com
	 * 修改时间：2018年3月28日 下午3:47:13    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("zhuxiaoclt")
	@ResponseBody
	public String zhuxiaoclt(HttpSession session){
		
		session.invalidate();
		return "success";
		
		
	}
	
	
	
	
	/**
	 * <pre>selectcompanyjifen(查询公司主页所剩积分)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月29日 上午9:08:16    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月29日 上午9:08:16    
	 * 修改备注： 
	 * @param id
	 * @param biaoid
	 * @return</pre>
	 */
	@RequestMapping("/selectcompanyjifen")
	@ResponseBody
	public String selectcompanyjifen(String id,String biaoid){
		
		Integer i=companyService.selectcompanyjifen(id,biaoid);
		
		return ""+i;
	}
	
	@RequestMapping("updatejifenyk")
	@ResponseBody
	public String updatejifenyk(String id,String biaoid,Integer jifen){
		companyService.updatejifenyk(id,biaoid,jifen);
		return "success";
	}
	
	@RequestMapping("updatejifen")
	@ResponseBody
	public void updatejifen(String id,String biaoid,Integer ioio){
		
		  companyService.updatejifentt(id,biaoid,ioio);
	}

	
}
