package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.dao.CustomerDao;
import com.music.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerDao customerDao;
		public void saveCustomer(Customer customer){
			customerDao.saveCustomer(customer);
		}
}


/*package com.music.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.music.dao.CustomerDao;
//import com.music.model.Customer;
import com.music.model.Users;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDao customerDao;
	
	public void c(Users users){
		customerDao.cd(users);
	}
    
	
	public List<Users>getusers(){
		return customerDao.getUsers();
	}
	
	
	public void c(Customer customer){
		customerDao.cd(customer);
	}
}
*/