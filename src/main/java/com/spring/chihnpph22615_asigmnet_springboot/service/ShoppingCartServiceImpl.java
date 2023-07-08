package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Cart;
import com.spring.chihnpph22615_asigmnet_springboot.entity.CartItem;
import org.hibernate.sql.ast.tree.expression.Collation;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.*;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService{

    Map<Integer, CartItem> maps = new HashMap<>();
    @Override
    public void add(CartItem item){
        CartItem cartItem = maps.get(item.getProductId());
        if(cartItem == null){
            maps.put(item.getProductId(), item);
        }else {
            cartItem.setQly(cartItem.getQly() + 1);
        }
    }
    @Override
    public void remove(int id){
        maps.remove(id);
    }
    @Override
    public CartItem update(int proID, int qty) {
        CartItem cartItem = maps.get(proID);
        cartItem.setQly(qty);
        return cartItem;
    }
    @Override
    public void clear(){
        maps.clear();
    }
    @Override
    public Collection<CartItem> getAllItems(){
        return maps.values();
    }
    @Override
    public int getCount(){
        return maps.values().size();
    }
    @Override
    public double getAmount(){
        return maps.values().stream().mapToDouble(item -> item.getQly()*item.getPrice()).sum();
    }

    public List<CartItem> getCartItems() {
        return new ArrayList<>(maps.values());
    }

}
