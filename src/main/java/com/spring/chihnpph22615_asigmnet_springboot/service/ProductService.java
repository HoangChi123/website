package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;

import java.util.Optional;

public interface ProductService {
     Optional<Product> findById(Integer id);

//     Optional<Product> findProductByID();
}
