/**
 * 
 */
/**
 * @author Administrator
 *
 */
package com.dugzzuli.dug.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.dugzzuli.dug.web.AdminController;

public class UserInterceptor implements HandlerInterceptor {
	private final static Logger logger = LoggerFactory.getLogger(UserInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 获取请求的URL
		String url = request.getRequestURI();
		logger.info("目前正在过滤的:" + url);
		// URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
		if (url.indexOf("login") >= 0) {
			return true;
		}
		// 获取Session
		HttpSession session = request.getSession();
		String admin = (String) session.getAttribute("admin");

		if (admin != null) {
			return true;
		}
		// 不符合条件的，跳转到登录界面
		logger.info("目前正在过滤的:" + url+" 条件不满足.....");
		response.sendRedirect("/ssm/admin/login");

		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}