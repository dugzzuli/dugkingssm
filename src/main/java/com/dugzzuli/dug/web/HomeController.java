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
import com.dugzzuli.dug.service.ICategoryService;
import com.dugzzuli.dug.service.INewsService;
import com.dugzzuli.dug.service.impl.CategoryService;
import com.dugzzuli.dug.service.impl.NewsService;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	public ICategoryService categoryService;
	@Autowired
	public INewsService newsService;

	@RequestMapping(value= {"/","/index"})
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


	@RequestMapping("/about")
	public ModelAndView about() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		News model=newsService.selectModel("about");
		dataMap.put("model", model);
		return new ModelAndView("about", dataMap);
	}

	@RequestMapping("/article_detail/{id}")
	public ModelAndView article_detail(@PathVariable("id") int id) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		News model = newsService.selectByPrimaryKey(id);
		model.setHits(model.getHits() + 1);
		newsService.updateByPrimaryKeySelective(model);
		dataMap.put("model", model);
		// 热门新闻
		List<News> listHot = newsService.selectHotNews("hot", 10);
		dataMap.put("listHot", listHot);

		return new ModelAndView("article_detail", dataMap);

	}

	@RequestMapping("/article")
	public ModelAndView article() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		// 热门新闻
		List<News> listHot = newsService.selectHotNews("hot", 10);
		dataMap.put("listHot", listHot);
		
		List<News> list = newsService.selectAll();
		dataMap.put("list", list);

		dataMap.put("category", "");

		
		List<Category> categoryList = categoryService.selectAll();

		dataMap.put("categoryList", categoryList);
		return new ModelAndView("article", dataMap);
	}

	@RequestMapping("/article/{category}")
	public ModelAndView article(@PathVariable("category") String category) {

		Map<String, Object> dataMap = new HashMap<String, Object>();
		// 热门新闻
		List<News> listHot = newsService.selectHotNews("hot", 10);
		dataMap.put("listHot", listHot);

		List<News> list = newsService.selectHotNews(category, 10);
		dataMap.put("list", list);
		
		List<Category> cateModelList = categoryService.selectCategory(category);
		dataMap.put("category", cateModelList.get(0).getCateName());

		List<Category> categoryList = categoryService.selectAll();
		dataMap.put("categoryList", categoryList);
		return new ModelAndView("article", dataMap);
	}

	@RequestMapping("/board")
	public ModelAndView board() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("board");
		return modelAndView;

	}

	@RequestMapping("/mood")
	public ModelAndView mood() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list = newsService.selectHotNews("webtrace",10);
		dataMap.put("list", list);
		return new ModelAndView("mood",dataMap);
	}

}
