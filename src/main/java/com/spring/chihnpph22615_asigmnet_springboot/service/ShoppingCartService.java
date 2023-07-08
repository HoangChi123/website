package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Cart;
import com.spring.chihnpph22615_asigmnet_springboot.entity.CartItem;

import java.util.Collection;

public interface ShoppingCartService {
    double getAmount();
    int getCount();
    Collection<CartItem> getAllItems();
    void clear();
    CartItem update(int proID, int qty);
    void remove(int id);
    void add(CartItem item);

}
