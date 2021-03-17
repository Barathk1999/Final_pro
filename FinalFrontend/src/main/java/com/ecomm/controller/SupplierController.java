package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO supplierDAO;

	@RequestMapping("/showSupplier")
	public String showSupplier(Model m) {
		List<Supplier> supplierList = supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList", supplierList);
		return "Supplier";
	}

	@RequestMapping(value = "/insertsupplier", method = RequestMethod.POST)
	public String insertsupplier(@RequestParam("supplierId") int supplierId,@RequestParam("supplierName") String supplierName,@RequestParam("supplierDesc") String supplierDesc,
								@RequestParam("addr") String addr,Model m) {
		Supplier supplier = new Supplier();
		supplier.setSupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplier.setAddr(addr);

		supplierDAO.addSupplier(supplier);
		List<Supplier> supplierList = supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList", supplierList);
		return "Supplier";

	}
	

	@RequestMapping(value="/deleteSupplier/{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId, Model m) {

		System.out.println("I am in delete page");
		Supplier supplier = supplierDAO.getSupplier(supplierId);

		supplierDAO.deleteSupplier(supplier);
		List<Supplier> supplierList = supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList", supplierList);

		return "Supplier";
		
		
	}
	@RequestMapping(value="/editSupplier/{supplierId}")
	public String editSupplier(@PathVariable("supplierId")int supplierId,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		m.addAttribute("supplier", supplier);
		return "SupplierUpdate";
	}
	
	
	@RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public String updateSupplier(@RequestParam("supplierId") int supplierId,@RequestParam("supplierName") String supplierName,@RequestParam("supplierDesc") String supplierDesc,
			@RequestParam("addr") String addr,Model m)
	{
		Supplier supplier=supplierDAO.getSupplier(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplier.setAddr(addr);
		supplierDAO.updateSupplier(supplier);
		
		List<Supplier> supplierList=supplierDAO.retrieveSupplier();
		m.addAttribute("supplierList", supplierList);
		
		return "Supplier";
	}
}
