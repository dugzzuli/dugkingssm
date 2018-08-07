package com.dugzzuli.dug.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/")
	public ModelAndView index()
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

}
