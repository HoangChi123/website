package com.spring.chihnpph22615_asigmnet_springboot.repository;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findByNameContainingIgnoreCase(String name);

    List<Product> findByCategory_Id(Integer id);

    Page<Product> findAllByCategory_Id(Integer id, Pageable pageable);

    Page<Product> findByNameContainingIgnoreCase(String name, Pageable pageable);
}
