package com.cbc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cbc.model.Customer;
import com.cbc.service.CustomerService;



@org.springframework.stereotype.Controller


@RequestMapping
public class CustController {
	
	@Autowired
	CustomerService  customerService;
	
	//load add employee form
	@GetMapping("addCustomer")
	public String  addCust()
	{
		return "AddCustomer";
		
	}
	
	//save employee form
	@PostMapping("/insertCustomer")
	public String insertCustomer(@ModelAttribute("insertCustomer") Customer cust)
	{
		
		customerService.addCust(cust);
		return "redirect:/Home";
	}
	
	//load employee data
	@GetMapping("Home")
	public String loadCustomer(Model m)
	{
		m.addAttribute("customer",customerService.getAllCust());
		m.addAttribute("title", "Customer Report");
		
		return "Home";
	}
	
	//load edit form 
	@GetMapping("/editCustomer/{id}")
	public String loadEditForm(@PathVariable(value="id") Long id, Model m)
	{
		Customer cust=customerService.getById(id);
		
		System.out.println(cust);
		m.addAttribute("customer", cust);
		m.addAttribute("title", "Edit Customer");
		
		return "EditCustomer";
		
	}
	
	@PostMapping("/editCustomer/updateCustomer")
	public String updateCust(@ModelAttribute("updateCustomer") Customer cust)
	{
		customerService.updateCust(cust);
		
		return "redirect:/Home";
		
	}
	
	@GetMapping("/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable Long id)
	{
		customerService.deleteCustomer(id);
		
		
		return "redirect:/Home";
	}
	}

