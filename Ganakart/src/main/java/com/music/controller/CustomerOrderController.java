package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerOrderController {
	
	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable int cartId){
		System.out.println("I'm inside customerordercontroller");
		return "redirect:/checkout?cartId="+cartId;
	}

}
