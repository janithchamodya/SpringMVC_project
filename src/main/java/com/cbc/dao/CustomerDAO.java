package com.cbc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.cbc.model.Customer;


@Component
public class CustomerDAO {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	
	@Transactional
	public void addCustomer(Customer cust)
	{
		hibernateTemplate.save(cust);
	}
	
	

	public List<Customer> getAllCust()
	{
		return hibernateTemplate.loadAll(Customer.class);
	}
	
	
	public Customer getCustById(Long id)
	{
		Customer emp= hibernateTemplate.get(Customer.class, id);
		return emp;
	}
	
	

	@Transactional
	public void updateCust(Customer cust)
	{
		hibernateTemplate.update(cust);
	}
	
	
	
	@Transactional
	public void deleteCust(Long id)
	{
		hibernateTemplate.delete(hibernateTemplate.load(Customer.class, id));
	}
}
