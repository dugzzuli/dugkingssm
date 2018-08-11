package com.dugzzuli.dug.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dugzzuli.dug.entity.Category;
import com.dugzzuli.dug.service.ICategoryService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	public ICategoryService categoryService;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("/admin/index");
	}

	@RequestMapping("/index")
	public ModelAndView index2index() {
		return new ModelAndView("/admin/index");
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("/admin/login");
	}

	@RequestMapping("/insert")
	public ModelAndView insert() {
		return new ModelAndView("/admin/insert");
	}

	@RequestMapping("/system")
	public ModelAndView system() {
		return new ModelAndView("/admin/system");
	}

	@RequestMapping("/design")
	public ModelAndView design() {
		return new ModelAndView("/admin/design");
	}

	@RequestMapping("/editor")
	public ModelAndView editor() {
		return new ModelAndView("/admin/editor");
	}

	@RequestMapping("/createCategory")
	public ModelAndView createCategory() {
		return new ModelAndView("/admin/createCategory");
	}

	@RequestMapping("/error")
	public ModelAndView error() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			
			return new ModelAndView("/admin/error");
		} catch (Exception e) {
			logger.error(e.getMessage());
			dataMap.put("errMsg", e.getMessage());
			dataMap.put("ex", e);
			return new ModelAndView("/admin/error", dataMap);
		}
	}

	@RequestMapping("/insertCategory")
	public ModelAndView insertCategory() {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		return new ModelAndView("/admin/insertCategory");
	}

	@RequestMapping("/listCategory")
	public ModelAndView listCategory() {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<Category> list = categoryService.selectAll();
		dataMap.put("list", list);
		return new ModelAndView("/admin/listCategory", dataMap);
	}

	@RequestMapping(value = "/insertCategory", method = RequestMethod.POST)
	public ModelAndView insertCategory(Category model) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		int i = categoryService.insert(model);
		if (i > 0) {
			return new ModelAndView("redirect:/admin/listCategory");
		} else
			return new ModelAndView("/admin/insertCategory");
	}

}
