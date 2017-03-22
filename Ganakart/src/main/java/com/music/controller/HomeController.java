package com.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}

@RequestMapping("/index")
public String gotoHome1()
{
	return "index";
}

//login?error, login?logout, login
@RequestMapping("/Login")
public String loginm(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully..");
	return "Login";
}

@RequestMapping("/About")
public String gotoHome3()
{
	return "About";
}

@RequestMapping("/Carousel")
public String gotoHome4()
{
	return "Carousel";
}

}
