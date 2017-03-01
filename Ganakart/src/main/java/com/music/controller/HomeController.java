package com.music.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.music.service.CategoryService;

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

@RequestMapping("/Login")
public String gotoHome2()
{
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

@RequestMapping("/Signup")
public String gotoHome5()
{
	return "Signup";
}

/*@RequestMapping("/index")
public String index(HTTPSesssion session){
	session.setAttribute("Categories",CategoryService.class)
}*/

@RequestMapping(value="checklogin",method=RequestMethod.POST)
public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
 String u=request.getParameter("inputUsername");
 String p=request.getParameter("inputPassword");
  LoginCredential obj=new LoginCredential();
   obj.setUname(u); 
   obj.setPasswd(p);
  
   if(obj.checklogin())
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("index");
    dispatch.forward(req, res);
   }
   else
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("Login");
    dispatch.forward(req, res);
   }
}
}