package com.dugzzuli.dug.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dugzzuli.dug.entity.Category;
import com.dugzzuli.dug.entity.News;
import com.dugzzuli.dug.service.impl.NewsService;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	public NewsService newsService;

	@RequestMapping("/")
	public ModelAndView index() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list=newsService.selectAll();
		dataMap.put("list", list);
		return new ModelAndView("index", dataMap);
	}

	@RequestMapping("/index")
	public ModelAndView index2index() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list=newsService.selectAll();
		dataMap.put("list", list);
		//热门新闻
		List<News> listHot=newsService.selectAllNews("id",10);
		dataMap.put("listHot", listHot);
		
		List<News> listHits=newsService.selectAllNews("id",10);
		dataMap.put("listHits", listHits);
		return new ModelAndView("index", dataMap);
	}

	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("about");
		return modelAndView;

	}

	@RequestMapping("/article_detail")
	public ModelAndView article_detail() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("article_detail");
		return modelAndView;

	}

	@RequestMapping("/article")
	public ModelAndView article() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("article");
		return modelAndView;

	}

	@RequestMapping("/board")
	public ModelAndView board() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board");
		return modelAndView;

	}

	@RequestMapping("/mood")
	public ModelAndView mood() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("mood");
		return modelAndView;
	}

}
