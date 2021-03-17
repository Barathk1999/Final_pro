package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController
{
	@RequestMapping("/Login")
	public String showLoginPage(Model m)
	{
		System.out.println("== I am in My Controller - Login Page");
		m.addAttribute("pagename","Sign In");
		return "Login";
	}
	@RequestMapping("/Logout")
	public String showLogoutPage(Model m)
	{
		System.out.println("== I am in My Controller - Logout Page");
		m.addAttribute("pagename","Logout");
		return "Logout";
	}
	@RequestMapping("/register")
	public String showRegisterPage(Model m)
	{
		System.out.println("== I am in My Controller - Register Page");
		m.addAttribute("pagename","Sign Up");
		return "Register";
	}
	@RequestMapping("/index")
	public String showIndexPage(Model m)
	{
		System.out.println("== I am in My Controller - index Page");
		m.addAttribute("pagename","Home");
		return "index";
	}
	@RequestMapping("/adminpage")
	public String showAdminPage(Model m)
	{
		System.out.println("== I am in My Controller - Admin Page");
		m.addAttribute("pagename","Admin");
		return "AdminHome";
	}
	@RequestMapping("/userpage")
	public String showindexPage(Model m)
	{
		System.out.println("== I am in My Controller - User Page");
		m.addAttribute("pagename","USer");
		return "UserHome";
	}
	@RequestMapping("/Iphone")
	public String showIphone(Model m) {
		System.out.println("Iphone page");
		return "Iphone";
}
	@RequestMapping("/aboutUs")
	public String showAboutUs(Model m)
	{
		System.out.println("== I am in My Controller - aboutus Page");
		m.addAttribute("pagename","About US");
		return "aboutUs";
	}
	@RequestMapping("/contact")
	public String showContactUs(Model m)
	{
		System.out.println("== I am in My Controller - contact Page");
		m.addAttribute("pagename","Contact US");
		return "contact";
	}
	
	
}
