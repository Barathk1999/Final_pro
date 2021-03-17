package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;
@Controller
public class ProductController {

	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/showProduct")
	public String showProduct(Model m)
	{
		List<Product> productList=productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		return "Product";
		
	}

	@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public String insertProduct(@RequestParam("productId") int productId,
			@RequestParam("productName") String productName, @RequestParam("productDesc") String productDesc
			,@RequestParam("stock")int stock, @RequestParam("price")int price, Model m) {
		Product product = new Product();
		product.setProductId(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setStock(stock);
		
	
		productDAO.addProduct(product);

		List<Product> productList = productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		return "Product";

	}
	

	@RequestMapping(value="/UpdateProduct", method=RequestMethod.POST)
	public String updateProduct(@RequestParam("productId") int productId,
			@RequestParam("productName") String productName, @RequestParam("productDesc") String productDesc
			,@RequestParam("stock")int stock, @RequestParam("price")int price, Model m)
	{
		Product product=productDAO.getProduct(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setStock(stock);
		
		
		 productDAO.updateProduct(product);
		List<Product> productList = productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		m.addAttribute("product", product);
		return "ProductUpdate";
	}
	
	@RequestMapping("/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId , Model m)
	{
		System.out.println("I am in Delete page");
		Product product= productDAO.getProduct(productId);
		
		productDAO.deleteProduct(product);
		List<Product> productList = productDAO.retrieveProducts();
		m.addAttribute("productList", productList);
		
		return "Product";
	}
	

}
