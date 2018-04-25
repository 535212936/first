package com.jk.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.User;
import com.jk.service.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Autowired
	private IUserService userService;


//上传图片
@RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST, produces = "application/json;charset=utf8")
@ResponseBody
public Object uploadMultipleFileHandler(@RequestParam("file") MultipartFile[] files) throws IOException {

	JSONObject json = new JSONObject();
	String info = "";
	Map<String ,String> map = new HashMap<String ,String>();
    ArrayList<Integer> arr = new ArrayList<>();

    for (int i = 0; i < files.length; i++) {
        MultipartFile file = files[i];

        if (!file.isEmpty()) {
            InputStream in = null;
            OutputStream out = null;

            try {
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(File.separator + "C:\\Users\\HASEE\\Desktop\\tupianmao\\webapps\\tmpFiles");//暂时不用
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

                map.put("url", "http://localhost:8088/"
                		+ "tmpFiles/"+file.getOriginalFilename());

               

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


	@RequestMapping("getyanzhengma")
	@ResponseBody
	public String getyanzhengma(String phone, HttpSession session) throws IOException {
		String ccode = common.util.HttpClient.togetString(phone);
		// 将得到的验证码放入session然后 去判断
		session.setAttribute("ccode", ccode);
		session.setAttribute("fasongtime", new Date().getTime());
		return "1";
	}

	// 验证码验证
	@RequestMapping("saveuserinfo")
	@ResponseBody
	public String saveuserinfo(User user, HttpSession session) {
		// 超市
		Long fasongtime = (Long) session.getAttribute("fasongtime");
		Long shijiancha = (new Date().getTime() - fasongtime) / 1000;
		if (shijiancha > 60) {
			return "1";
		} else {
			String code = (String) session.getAttribute("ccode");
			if (code != null && !"".equals(code)) {
				if (code.equals(user.getYzm())){
					System.out.println("进行后台注册!!");
						String ttb = userService.saveuserinfo(user);
						if("1".equals(ttb)){
							return "3";
						}else{
							return "2";
					}
				}
			}
		}
		return "4";
	}
	
	@RequestMapping("sjiyanzheng")
	@ResponseBody
	public String sjiyanzheng(String phone, User user,HttpSession session) throws IOException {
		//重置时先查询账号与手机号是否关联
			String intr =  userService.sjiyanzheng(user);
				if("1".equals(intr)){
					String ccode = common.util.HttpClient.togetString(phone);
					// 将得到的验证码放入session然后 去判断
					session.setAttribute("ccodet", ccode);
					session.setAttribute("fasongtime", new Date().getTime());
					return "1";
				}
				return "2";
	}

	// 验证码验证
	@RequestMapping("xiugaizhanghao")
	@ResponseBody
	public String xiugaizhanghao(User user, HttpSession session) {
		// 超市
		Long fasongtime = (Long) session.getAttribute("fasongtime");
		Long shijiancha = (new Date().getTime() - fasongtime) / 1000;
		if (shijiancha > 60) {
			return "1";
		} else {
			String code = (String) session.getAttribute("ccodet");
			if (code != null && !"".equals(code)) {
				if (code.equals(user.getYzm())){
					System.out.println("进行后台修该!!");
						userService.xiugaizhanghao(user);
					return "2";
				}
			}
		}
		return "3";
	}
	
	/**
	 * <pre>selectTxlk(查询下拉框)   
	 * 创建人：刘沁鑫yangpei310@163.com
	 * 创建时间：2018年3月22日 下午8:47:21    
	 * 修改人：刘沁鑫yangpei310@163.com
	 * 修改时间：2018年3月22日 下午8:47:21    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("selectTxlk")
	@ResponseBody
		public String selectTxlk(){
			List list = null;
			try {
				list = userService.selectTxlk();
				System.out.println(list);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return JSON.toJSONString(list);
		}
	
/**
 * <pre>selectdenglu(登录)   
 * 创建人：刘沁鑫yangpei310@163.com
 * 创建时间：2018年3月22日 下午9:23:40    
 * 修改人：刘沁鑫yangpei310@163.com
 * 修改时间：2018年3月22日 下午9:23:40    
 * 修改备注： 
 * @param user
 * @param session
 * @return</pre>
 */
	@RequestMapping("selectdenglu")
	@ResponseBody
	public String selectdenglu(User user,HttpSession session){
		String list = userService.selectdenglu(user,session);
		return 	list;
	}
	/**
	 * <pre>selectuserWenti1(更具账号去后台查询  问题 回显span 中)
	 * 创建人：刘沁鑫yangpei310@163.com
	 * 创建时间：2018年3月23日 上午11:04:37    
	 * 修改人：刘沁鑫yangpei310@163.com
	 * 修改时间：2018年3月23日 上午11:04:37    
	 * 修改备注： 
	 * @return</pre>
	 */
	@RequestMapping("selectuserWenti1")
	@ResponseBody
	public String selectuserWenti1(String loginname){
			String wenti1 = userService.selectuserWenti1(loginname);
			System.out.println(wenti1);
		return JSON.toJSONString(wenti1);
	}
	
/**
 * <pre>selectuserWenti2(更具账号去后台查询  问题 回显span 中 2)   
 * 创建人：刘沁鑫yangpei310@163.com
 * 创建时间：2018年3月23日 上午11:18:39    
 * 修改人：刘沁鑫yangpei310@163.com
 * 修改时间：2018年3月23日 上午11:18:39    
 * 修改备注： 
 * @param loginname
 * @return</pre>
 */
	@RequestMapping("selectuserWenti2")
	@ResponseBody
	public String selectuserWenti2(String loginname){
		String wenti2 = userService.selectuserWenti2(loginname);
		System.out.println(wenti2);
		return JSON.toJSONString(wenti2);
	}

}
