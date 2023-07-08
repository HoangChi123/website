package com.spring.chihnpph22615_asigmnet_springboot.entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Integer productId;
//    private String name;
//    private double price;
//    private int qly = 1;
//@OneToMany(mappedBy = "cart")
//private List<Product> products = new ArrayList<>();
private List<CartItem> items = new ArrayList<CartItem>();
    private Map<Integer, Integer> danhSachSanPham = new HashMap<>();
    public Map<Integer, Integer> getDanhSachSanPham(){
        return danhSachSanPham;
    }
    public void setDanhSachSanPham(Map<Integer,Integer>danhSachSanPham){
        this.danhSachSanPham = danhSachSanPham;
    }

    public double getTotal() {
        double total = 0;
        for (CartItem item : items) {
            total += item.getPrice() * item.getQly();
        }
        return total;
    }
}
