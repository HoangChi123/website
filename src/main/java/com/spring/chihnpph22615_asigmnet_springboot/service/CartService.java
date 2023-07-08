package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Cart;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.Map;
@Service
@SessionScope
public class CartService {
    private final Cart cart = new Cart();

    public void themSanPham(Integer sphamId, Integer soLuong) {
        Map<Integer, Integer> dsSanPham = cart.getDanhSachSanPham();
        if (dsSanPham.containsKey(sphamId)) {
            Integer soLuongHienTai = dsSanPham.get(sphamId);
            Integer soLuongMoi = soLuongHienTai + soLuong;
            dsSanPham.put(sphamId, soLuongMoi);
        } else {
            dsSanPham.put(sphamId, soLuong);
        }
    }

    public Map<Integer, Integer> xemSanPham() {
        return cart.getDanhSachSanPham();
    }

    public void remove(int sanPhamId) {
        cart.getDanhSachSanPham().remove(sanPhamId);
    }
}
