package com.ecomm.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/showCategory")
	public String showCategory(Model m)
	{
		List<Category> categoryList=categoryDAO.retrieveCategories();
		m.addAttribute("categoryList", categoryList);
		return "Category";
	}
	
	@RequestMapping("/InsertCategory")
	public String insertCategory(@RequestParam("categoryId")int categoryId,@RequestParam("categoryName") String categoryName,@RequestParam("categoryDesc")String categoryDesc,Model m)
	{
		Category category =new Category();
		category.setCategoryId(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		categoryDAO.addCategory(category);
		List<Category> categoryList=categoryDAO.retrieveCategories();
		m.addAttribute("categoryList", categoryList);
		return "Category";
	}

	
	@RequestMapping(value="/updateCategory",method=RequestMethod.POST)
	public String updateCategory(@RequestParam("categoryId")int categoryId,@RequestParam("categoryName")String categoryName,@RequestParam("categoryDesc")String categoryDesc,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		
		categoryDAO.updateCategory(category);
		
		List<Category> categoryList=categoryDAO.retrieveCategories();
		m.addAttribute("categoryList", categoryList);
		
		return "Category";
	}

	@RequestMapping(value="/editCategory/{categoryId}")
	public String editCategory(@PathVariable("categoryId")int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		m.addAttribute("category", category);
		return "UpdateCategory";
	}
	
	
	@RequestMapping("/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId , Model m)
	{
		System.out.println("I am in Delete page");
		Category category= categoryDAO.getCategory(categoryId);
		
		categoryDAO.deleteCategory(category);
		List<Category> categoryList = categoryDAO.retrieveCategories();
		m.addAttribute("categoryList", categoryList);
		
		return "Category";
	}
}
