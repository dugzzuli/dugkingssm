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
		// ��ȡ�����URL
		String url = request.getRequestURI();
		logger.info("Ŀǰ���ڹ��˵�:" + url);
		// URL:login.jsp�ǹ�����;���demo�ǳ���login.jsp�ǿ��Թ������ʵģ�������URL���������ؿ���
		if (url.indexOf("login") >= 0) {
			return true;
		}
		// ��ȡSession
		HttpSession session = request.getSession();
		String admin = (String) session.getAttribute("admin");

		if (admin != null) {
			return true;
		}
		// �����������ģ���ת����¼����
		logger.info("Ŀǰ���ڹ��˵�:" + url+" ����������.....");
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