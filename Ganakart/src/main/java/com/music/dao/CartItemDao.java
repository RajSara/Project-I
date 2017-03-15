package com.music.dao;

import com.music.model.Cart;
import com.music.model.CartItem;

public interface CartItemDao {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);

}
