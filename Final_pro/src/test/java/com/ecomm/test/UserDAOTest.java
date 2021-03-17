package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest 
{
	static UserDAO userDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		userDAO=(UserDAO)myContext.getBean("userDAO");
	}
	
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("Maruthu");
		user.setPassword("12345");
		user.setCustomerName("Maruthu vel");
		user.setEnabled(true);
		user.setEmailId("maruthu@gmail.com");
		user.setAddress("coimbatore");
		user.setMobileNo("9600456256");
		user.setRole("ROLE_ADMIN");
		
		assertTrue("Problem in Inserting UserDetail :",userDAO.registerUser(user));
	}

}
