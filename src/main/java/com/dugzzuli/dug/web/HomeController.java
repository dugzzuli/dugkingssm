package com.dugzzuli.dug.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dugzzuli.dug.entity.Category;
import com.dugzzuli.dug.entity.News;
import com.dugzzuli.dug.service.impl.CategoryService;
import com.dugzzuli.dug.service.impl.NewsService;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	public CategoryService categoryService;
	@Autowired
	public NewsService newsService;

	@RequestMapping("/")
	public ModelAndView index() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list = newsService.selectAll();
		dataMap.put("list", list);
		// 热门新闻
		List<News> listHot = newsService.selectHotNews("hot", 10);
		dataMap.put("listHot", listHot);

		List<News> listHits = newsService.selectAllNews("id", 10);
		dataMap.put("listHits", listHits);

		List<Category> listCategory = categoryService.selectCategory("Category");
		dataMap.put("listCategory", listCategory);
		return new ModelAndView("index", dataMap);

	}

	@RequestMapping("/index")
	public ModelAndView index2index() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list = newsService.selectAll();
		dataMap.put("list", list);
		// 热门新闻
		List<News> listHot = newsService.selectHotNews("hot", 10);
		dataMap.put("listHot", listHot);

		List<News> listHits = newsService.selectAllNews("id", 10);
		dataMap.put("listHits", listHits);

		List<Category> listCategory = categoryService.selectCategory("Category");
		dataMap.put("listCategory", listCategory);
		return new ModelAndView("index", dataMap);
	}

	@RequestMapping("/about")
	public ModelAndView about() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		return new ModelAndView("about", dataMap);

	}

	@RequestMapping("/article_detail/{id}")
	public ModelAndView article_detail(@PathVariable("id") int id) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		News model=newsService.selectByPrimaryKey(id);
		dataMap.put("model", model);
		return new ModelAndView("article_detail",dataMap);

	}

	@RequestMapping("/article")
	public ModelAndView article() {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("article");
		return modelAndView;
	}

	@RequestMapping("/article/{category}")
	public ModelAndView article(@PathVariable("category") String category) {

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
