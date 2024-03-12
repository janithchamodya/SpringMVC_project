package com.cbc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cbc.dao.CustomerDAO;
import com.cbc.model.Customer;


@Component
@Service
public class CustomerService {
	@Autowired
	CustomerDAO customerDAO;
	
	
	public void addCust(Customer cust)
	{
		customerDAO.addCustomer(cust);
	}
	
	
	public List<Customer> getAllCust()
	{
		return customerDAO.getAllCust();
	}
	
	

	public Customer getById(Long id)
	{
		return customerDAO.getCustById(id);
	}
	
	
	
	public void updateCust(Customer cust)
	{
		customerDAO.updateCust(cust);
	}
	
	
	
	public void deleteCustomer(Long  id)
	{
		customerDAO.deleteCust(id);
	}
}
