package com.dugzzuli.dug.web;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("/admin/index");
	}
	@RequestMapping("/index")
	public ModelAndView index2index()
	{
		return new ModelAndView("/admin/index");
	}
	@RequestMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("/admin/login");
	}
	@RequestMapping("/insert")
	public ModelAndView insert()
	{
		return new ModelAndView("/admin/insert");
	}
	@RequestMapping("/system")
	public ModelAndView system()
	{
		return new ModelAndView("/admin/system");
	}
	
	@RequestMapping("/design")
	public ModelAndView design()
	{
		return new ModelAndView("/admin/design");
	}
	
	@RequestMapping("/editor")
	public ModelAndView editor()
	{
		return new ModelAndView("/admin/editor");
	}
	
	@RequestMapping("/createCategory")
	public ModelAndView createCategory() {
		return new ModelAndView("/admin/createCategory");
	}
	@RequestMapping("/error")
	public ModelAndView error() {
		Map<String,String> dataMap=new HashMap<String,String>();
		try {
			int i=1/0;
		return new ModelAndView("/admin/error");
		}
		catch(Exception e){
			
				logger.error(e.getMessage());
				
				dataMap.put("errMsg", e.getMessage());
				return new ModelAndView("/admin/error",dataMap);
			
		
		}
	}

}
