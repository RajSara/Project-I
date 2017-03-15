package com.music.model;

import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class CustomerOrder implements Serializable {
    
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int OrderId;
	
	@OneToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	
	@OneToOne
	@JoinColumn(name="billingaddress_id")
	private BillingAddress billingaddress;
	
	@OneToOne
	@JoinColumn(name="shippingAddress_id")
	private ShippingAddress shippingAddress;
	private Cart cart;
	
								/*Generate Getter and Setter Methods*/
	
	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public BillingAddress getBillingaddress() {
		return billingaddress;
	}
	public void setBillingaddress(BillingAddress billingaddress) {
		this.billingaddress = billingaddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
}
