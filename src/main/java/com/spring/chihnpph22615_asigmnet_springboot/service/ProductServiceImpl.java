package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.controller.ProductController;
import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;
import com.spring.chihnpph22615_asigmnet_springboot.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    ProductRepository productRepository;

    @Override
    public Optional<Product> findById(Integer id) {
        return productRepository.findById(id);
    }
}
