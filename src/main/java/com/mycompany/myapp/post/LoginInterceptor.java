package com.mycompany.myapp.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session =request.getSession();
		Object obj=session.getAttribute("login");
		if(obj==null) {
			response.sendRedirect(request.getContextPath()+"/login/login");
			return false;
		}
		return true;
		//return super.preHandle(request, response, handler);
	}

//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		// TODO Auto-generated method stub
//		super.postHandle(request, response, handler, modelAndView);
//	}
	
//	@Override
//	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler)
//	throws Exception{
//		HttpSession session =request.getSession();
//		Object obj=session.getAttribute("login");
//		if(obj==null) {
//			response.sendRedirect(request.getContextPath()+"/login");
//			return false;
//		}
//		return true;
//	}
//	
//	@

}
