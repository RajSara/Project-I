package com.music.dao;

import com.music.model.Product;

import java.util.List;

public interface ProductDao {

	public int insertRow(Product prd);

	 public List<Product> getList();

	 public Product getRowById(int id);

	 public int updateRow(Product prd);

	 public int deleteRow(int id);

}



