package com.dugzzuli.dug.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dugzzuli.dug.entity.Category;
import com.dugzzuli.dug.entity.News;
import com.dugzzuli.dug.entity.Sysuser;
import com.dugzzuli.dug.service.ICategoryService;
import com.dugzzuli.dug.service.INewsService;
import com.dugzzuli.dug.service.ISysuser;
import com.dugzzuli.dug.util.UtilsQiniu;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private final static Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	public ICategoryService categoryService;

	@Autowired
	public INewsService newsService;

	@Autowired
	public ISysuser sysuser;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("/admin/index");
	}

	@RequestMapping("/index")
	public ModelAndView index2index() {
		return new ModelAndView("/admin/index");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(Sysuser model, HttpServletRequest request) {
		Sysuser modelUser = sysuser.selectModel(model);
		HttpSession session = request.getSession();
		if (modelUser == null) {
			return new ModelAndView("redirect: /admin/login");
		} else {
			session.setAttribute("admin", "admin");
			return new ModelAndView("redirect:/admin/index");
		}
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("/admin/login");
	}

	@RequestMapping("/list")
	public ModelAndView list() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<News> list = newsService.selectAllNews("id",10);
		dataMap.put("list", list);
		return new ModelAndView("/admin/list", dataMap);
	}
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable int id) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		News model=newsService.selectByPrimaryKey(id);
		dataMap.put("model", model);
		List<Category> list=categoryService.selectAll();
		dataMap.put("list", list);
		return new ModelAndView("/admin/update", dataMap);
	}

	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id")int id)
	{
		newsService.deleteByPrimaryKey(id);
		return new ModelAndView("redirect:/admin/list");
		
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public ModelAndView update(News model) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		newsService.updateByPrimaryKeySelective(model);
		return new ModelAndView("redirect:/admin/list", dataMap);
	}

	@RequestMapping("/insert")
	public ModelAndView insert() {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<Category> list=categoryService.selectAll();
		dataMap.put("list", list);
		return new ModelAndView("/admin/insert", dataMap);
	}
	
	

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView insert(News model) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		logger.info(model.toString());
		try {
			String pic=UtilsQiniu.uploadPath(model.getPic());
			model.setPic(pic);
			int i = newsService.insertSelective(model);
			return new ModelAndView("redirect:/admin/list", dataMap);
		} catch (Exception e) {
			logger.error(e.getMessage());
			dataMap.put("errMsg", e.getMessage());
			e.printStackTrace();
			return new ModelAndView("/admin/error", dataMap);
		}
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
			e.printStackTrace();
			return new ModelAndView("/admin/error", dataMap);
		}
	}

//	插入用户
	@RequestMapping("/insertSysUser")
	public ModelAndView insertSysUser() {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		return new ModelAndView("/admin/insertSysUser", dataMap);
	}

	@RequestMapping(value = "/insertSysUser", method = RequestMethod.POST)
	public ModelAndView insertSysUser(Sysuser model) {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		try {
			int i = sysuser.insert(model);
			return new ModelAndView("/admin/insertSysUser");
		} catch (Exception e) {
			logger.error(e.getMessage());
			dataMap.put("errMsg", e.getMessage());
			e.printStackTrace();
			return new ModelAndView("/admin/error", dataMap);
		}
	}

//插入分类
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
		try {
			int i = categoryService.insert(model);
			if (i > 0) {
				return new ModelAndView("redirect:/admin/listCategory");
			} else
				return new ModelAndView("/admin/insertCategory");

		} catch (Exception e) {
			logger.error(e.getMessage());
			dataMap.put("errMsg", e.getMessage());
			e.printStackTrace();
			return new ModelAndView("/admin/error", dataMap);
		}
	}

}
