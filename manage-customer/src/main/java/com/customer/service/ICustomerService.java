package com.customer.service;

import java.util.ArrayList;

import com.customer.model.Customer;


public interface ICustomerService {
	
	public void addCustomer(Customer customer);
	
    public ArrayList<Customer> getCustomer();
	
	public ArrayList<Customer> getCustomertById(String customerId);	
	
	public void updateCustomer(String customerId, Customer customer);
	
	public void deleteCustomer(String customerId);
	
}
