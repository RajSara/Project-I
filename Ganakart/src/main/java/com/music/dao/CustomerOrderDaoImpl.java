package com.music.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.model.Cart;
import com.music.model.CartItem;
import com.music.model.CustomerOrder;
@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao {
@Autowired
private SessionFactory sessionFactory;
public void addCustomerOrder(Cart cart) {
	System.out.println("hlooooooooooooo");
CustomerOrder customerOrder=new CustomerOrder();
System.out.println("1");
customerOrder.setCart(cart);
System.out.println("2");
customerOrder.setCustomer(cart.getCustomer());
System.out.println("3");
customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
System.out.println("4");
customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
System.out.println("5");
//Insert the data in CustomerOrder table
Session session=sessionFactory.openSession();
System.out.println("6");
session.save(customerOrder);

//To update grandtotal in Cart table
System.out.println("I'm in LIST");
List<CartItem> cartItems=cart.getCartItems();
double grandTotal=0.0;
for(CartItem cartItem:cartItems){
grandTotal=grandTotal + cartItem.getTotalPrice();
}
System.out.println("GRANDTOTAL");
cart.setGrandTotal(grandTotal);
//update cart set grandtotal=? where cartid=?
session.update(cart);
session.flush();
session.close();
}
}
