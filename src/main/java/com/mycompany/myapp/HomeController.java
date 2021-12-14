package com.mycompany.myapp;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.mycompany.myapp.post.PostDAO;
import com.mycompany.myapp.post.PostVO;

/**f
 * Handles requests for the application home page.
 */
@Controller 
public class HomeController {
	@Autowired
	PostDAO postDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "/home";
	}
	
	
	@RequestMapping(value="/detail/{id}",method=RequestMethod.GET)
	public String postDetail(@PathVariable("id")int id,Model model) {
		PostVO postVO=postDAO.selectMember(id);
		model.addAttribute("u",postVO);
		return "/detail";
	}
	
}
