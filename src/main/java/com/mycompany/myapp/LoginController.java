package com.mycompany.myapp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.myapp.post.UserServiceImpl;
import com.mycompany.myapp.post.UserVO;
@Controller 
@RequestMapping(value="/login")
public class LoginController {
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(String t,Model model) {
		return "login";
	}
	
	@RequestMapping(value="/loginOK",method=RequestMethod.POST)
		public String loginCheck(HttpSession session,UserVO vo) {
		String returnURL="";
		//System.out.println(session.getAttribute("login"));
		if(session.getAttribute("login")!=null) {
			session.removeAttribute("login");
		}
		
		UserVO loginvo=service.getUser(vo);
		if(loginvo!=null) {//로그인 성공 
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginvo);
			returnURL="redirect:/detail";//
		}
		else {
			System.out.println("로그인 실패!");
			returnURL="redirect:/login/login";
		}
		return returnURL;
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
