package com.sachin.retailer;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	DB mydata;
	HomeController()
	{
		mydata = new DB();
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		ArrayList <RetailerDetail> rlist = mydata.getData();
		model.addAttribute("name",rlist);
//		RetailerDetail rd = new RetailerDetail("a","b","c","d");
		
		return "home";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Locale locale, Model model) {
		
		ArrayList <RetailerDetail> rlist = mydata.getData();
		
		model.addAttribute("name", rlist );
		
		return "form";
	}
}
