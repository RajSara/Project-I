package com.music.dao;
import com.music.model.Customer;


public interface CustomerDao {

	public void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String user);
}