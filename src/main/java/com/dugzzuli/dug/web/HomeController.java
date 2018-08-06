package com.dugzzuli.dug.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;

	}
	
	@RequestMapping("/index")
	public ModelAndView index2index() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;

	}
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("about");
		return modelAndView;

	}
	@RequestMapping("/article_detail")
	public ModelAndView article_detail() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("article_detail");
		return modelAndView;

	}
	
	
	@RequestMapping("/article")
	public ModelAndView article() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("article");
		return modelAndView;

	}
	
	
	@RequestMapping("/board")
	public ModelAndView board() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("board");
		return modelAndView;

	}
	
	@RequestMapping("/mood")
	public ModelAndView mood() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("mood");
		return modelAndView;

	}
	
	
	
	
	
}
