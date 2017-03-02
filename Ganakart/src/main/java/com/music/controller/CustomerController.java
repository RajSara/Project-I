package com.music.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.model.Customer;
import com.music.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
private CustomerService customerService;	
	
@RequestMapping("/eo/customerForm")
public String getRegistrationForm(Model model){
	model.addAttribute("customer",new Customer());
	return "CustomerDetails";
}
@RequestMapping("/eo/CustomerDetails")
public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer,BindingResult result,Model model){
	System.out.println("I'm Saranya");
	if(result.hasErrors())
		return "CustomerDetails";
	try{
	customerService.saveCustomer(customer);
	}catch(Exception e){
		model.addAttribute("duplicateUsername","Username already exists. Please enter different username");
		model.addAttribute("registrationSuccess","Congrats! Enter with your UserName and Proceed to Enjoy!!!!");
		System.out.println("i'm vignesh");
		System.out.println("Exception is " + e.getMessage());
		return "CustomerDetails";
	}
	return "loginm";
}

}
