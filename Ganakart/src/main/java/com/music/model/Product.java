package com.music.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="product")
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;

@NotEmpty(message="Product Name is mandatory")
private String name;

@NotEmpty(message="Description is Mandatory")
private String description;

@Min(value=5,message="Minimum value of price must be 10Rs")	
private double price;

@Min(value=1,message="minimum qantity must be 1")
private int quantity;
	
@NotNull(message="Manufacturing date is mandatory")	
private Date mfg;

@ManyToOne
@JoinColumn(name="cid")
@NotNull(message="Category is mandatory")
private Category category;
public Category getCategory(){
	return category;
}

//sample_product [pid,name,description,price,quantity,mfg]

@Transient
private MultipartFile image;

                     /*Generating getters and setters*/
public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public Date getMfg() {
	return mfg;
}

public void setMfg(Date mfg) {
	this.mfg = mfg;
}

public MultipartFile getImage() {
	return image;
}

public void setImage(MultipartFile image) {
	this.image = image;
}
public Category getCategory1(){
	return category;
}
public void setCategory1(Category category) {
	this.category = category;
}

}






































/*package com.music.model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="product")
public class Product implements Serializable {
	
	private static final long serialVersionUID = -723583058586873479L;
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
    private Integer productid;
	private String name;
	private String description;
	private int price;
	
	@ManyToOne
	@JoinColumn(name="cid")
	private Category category;
	
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
    
}
*/