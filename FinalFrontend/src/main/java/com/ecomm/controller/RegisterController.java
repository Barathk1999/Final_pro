package com.ecomm.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

@Controller
public class RegisterController 
{
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public String registerUser(@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam("customerName")String customerName,@RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address)
	{
		System.out.println("Registered User Method");
		UserDetail userdetail=new UserDetail();
		userdetail.setUsername(username);
		userdetail.setPassword(password);
		userdetail.setCustomerName(customerName);
		userdetail.setEnabled(true);
		userdetail.setEmailId(emailId);
		userdetail.setAddress(address);
		userdetail.setMobileNo(mobileNo);
		userdetail.setRole("ROLE_USER");
		
		String encodedPassword = bCryptPasswordEncoder.encode(userdetail.getPassword());
		
		userdetail.setPassword(encodedPassword);
		
		if(userDAO.registerUser(userdetail))
		{
			System.out.println("Registration Succesful");
			return "Login";
			
		}
		else
		{
			System.out.println("Error occured");
			return "Register";
		}
		
	}


}


