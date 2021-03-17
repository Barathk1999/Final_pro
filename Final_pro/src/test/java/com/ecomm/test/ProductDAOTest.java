package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;
public class ProductDAOTest 
{
static ProductDAO productDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		productDAO=(ProductDAO)myContext.getBean("productDAO");
	}
	@Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductId(1001);
		product.setProductName("Iphone-SE");
		product.setProductDesc("Iphone-SE");
		product.setStock(20);
		product.setPrice(1000);
			
		assertTrue("Problem in inserting Product",productDAO.addProduct(product));
	}
	@Ignore
	@Test
	public void updateProductTest()
	{
		Product product=(Product)productDAO.getProduct(1001);
		product.setProductName("");
		
		//assertNotNull("Problem in Null Category",category);
		
		System.out.println("Product ID:"+product.getProductId());
		System.out.println("Product Name:"+product.getProductName());
		
		assertTrue("Problem in updating Product",productDAO.updateProduct(product));
	}
	@Ignore
	@Test
	public void retrieveProductsTest()
	{
		List<Product> productList=(List<Product>)productDAO.retrieveProducts();
		
		assertTrue("Problem in Retrieving the Product List",productList.size()>0);
		
		for(Product product:productList)
		{
			System.out.println(product);
		}
	}
	@Ignore
	@Test
	public void deleteProductTest()
	{
		Product category=(Product)productDAO.getProduct(1004);
		
		
		assertTrue("Problem in updating Product",productDAO.deleteProduct(category));
	}

}
