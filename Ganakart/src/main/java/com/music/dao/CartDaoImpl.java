package com.music.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.music.model.Cart;

@Repository
public class CartDaoImpl implements CartDao{
	@Autowired
private SessionFactory sessionFactory;
	public Cart getCart(int cartId){
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}
	public Cart validate(int cartId) throws IOException{
		System.out.println("I'm inside CCART DAO IMPL");
		Cart cart=getCart(cartId);
		if(cart.getCartItems().size()==0 || cart==null)
			throw new IOException(cartId+"");
		return cart;
	}
}
