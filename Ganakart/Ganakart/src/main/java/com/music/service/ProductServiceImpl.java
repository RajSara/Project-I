package com.music.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.dao.ProductDao;
import com.music.model.Product;

@Service
public class ProductServiceImpl implements ProductService
{

	@Autowired
	private ProductDao productDao;
	
	public ProductServiceImpl()
	{
		System.out.println("Creating instance for ProductServiceImpls");
	}
	public Product SaveProduct(Product product) {
	
		return productDao.saveProduct(product);
	}

}
