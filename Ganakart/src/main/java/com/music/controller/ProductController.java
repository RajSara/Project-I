package com.music.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.music.model.Product;
import com.music.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	public ProductController()
	{
		System.out.println("Creating instance for ProductController");
	}
	
@RequestMapping("admin/product/ProductForm")	

public String getProductForm(Model model)
{
	model.addAttribute("product",new Product());
	return"ProductForm";
	}

@RequestMapping("admin/product/addProduct")
public ModelAndView saveProduct(@ModelAttribute(value="Product")Product product)
{
//ProductService.saveProduct(product)
	Product newProduct=productService.SaveProduct(product);
	
return new ModelAndView("productList","product",newProduct);
}
	}

