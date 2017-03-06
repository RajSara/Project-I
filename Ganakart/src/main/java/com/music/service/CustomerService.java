package com.music.service;
import com.music.model.Customer;

public interface CustomerService {
	
	public void saveCustomer(Customer customer);

	public Customer getCustomerByUsername(String username);
	
}
