package com.jk.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jms.Session;
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
import com.jk.model.Guanggao;
import com.jk.model.Job;
import com.jk.service.IGuanggaoService;


@Controller
@RequestMapping(value="ggController")
public class GuanggaoController {

	@Autowired
	private IGuanggaoService ggService;
	
	/**
	 * <pre>queryGuanggao(广告列表)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月25日 下午3:39:15    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月25日 下午3:39:15    
	 * 修改备注： 
	 * @return</pre>
	 * @throws Exception 
	 */
	
	@RequestMapping(value="queryGuanggao")
	@ResponseBody
	public List<Guanggao> queryCost(Guanggao gg,Integer offset,Integer limit) throws Exception{
	
		
		List<Guanggao>list= ggService.queryGuanggao(gg);
	
		return list;
	}
	
	
	/**
	 * <pre>queryselect(查询公司下拉框显示)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月25日 下午5:06:03    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月25日 下午5:06:03    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="queryselect")
	@ResponseBody
	public List<Company> queryselect(){
		List<Company> glist = null;
		try {
			glist = ggService.queryselect();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return glist;
	}
	
	/**
	 * <pre>addguanggao(新增广告信息)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月25日 下午6:05:01    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月25日 下午6:05:01    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="addguanggao")
	@ResponseBody
	public String addguanggao(Guanggao gg){
		Integer i = 0;
		try {
			i = ggService.addguanggao(gg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(i > 0){
			return "success";
		}
		return "fail";
	}
	
	/**
	 * <pre>upfile(上传图片)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月25日 下午6:33:48    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月25日 下午6:33:48    
	 * 修改备注： 
	 * @param files
	 * @return
	 * @throws IOException</pre>
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

                    File dir = new File(File.separator + "C:\\Users\\HASEE\\Desktop\\tupianmao\\webapps\\tmpFiles");

                   

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
                    
                    map.put("url","http://localhost:8088/"
                    		+ "tmpFiles/"+file.getOriginalFilename());
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
	 * <pre>queryIndex(首页广告位查询)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月26日 上午10:24:15    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月26日 上午10:24:15    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping(value="guanggaolist")
	@ResponseBody
	public List<Guanggao> guanggaolist(Guanggao gg){
		List<Guanggao> json = new ArrayList<Guanggao>();
		try {
			json = ggService.guanggaolist(gg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return json;
	}
	
	/**
	 * <pre>companyjob(查询公司详细信息以及发布过的职位)   
	 * 创建人：孙国锦getElements@outlook.com
	 * 创建时间：2018年3月26日 下午3:13:51    
	 * 修改人：孙国锦getElements@outlook.com
	 * 修改时间：2018年3月26日 下午3:13:51    
	 * 修改备注： 
	 * @param id
	 * @return</pre>
	 */
	@RequestMapping(value="companyjob")
	public String companyjob(String id,HttpServletRequest req){
		List<Company> clist=null;
		try {
			clist = ggService.querycompanyjob(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (Company company : clist) {
			req.setAttribute("com", company);			
		}
		return "companyInfo";
	}
	
	
	@RequestMapping(value="queryCompanyJob")
	@ResponseBody
	public List<Job> queryCompanyJob(String id){
		List<Job> jlist = null;
		try {
			jlist = ggService.queryCompanyFabuJob(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jlist;
	}
/**
 * 标题栏注销
 */

@RequestMapping("qingkongsesson")
@ResponseBody
public String qingkongsesson(HttpSession session){
		session.removeAttribute("user");
	return "index";
}
	
	
}
