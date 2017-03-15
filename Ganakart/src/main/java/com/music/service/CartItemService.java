package com.music.service;

import com.music.model.Cart;
import com.music.model.CartItem;

public interface CartItemService {

	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);

}
