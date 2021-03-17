package com.ecomm.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

@Controller
public class UserController 
{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/login_success")
	public String successLoggedIn(HttpSession session)
	{
		String page="";
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
		String username=authentication.getName();
		session.setAttribute("username", username);
		
		List<Product> productList=productDAO.retrieveProducts();
		session.setAttribute("productList", productList);
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_ADMIN"))
				page="AdminHome";
			else
				page="UserHome";
			
		}
		
		return page;
	}
	
	@RequestMapping(value="/logout")
	public String loggedOut()
	{
		String page="Logout";
		
		
		return page;
	}
	
}
