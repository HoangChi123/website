package com.spring.chihnpph22615_asigmnet_springboot.controller;


import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;
import com.spring.chihnpph22615_asigmnet_springboot.repository.CategoryRepository;
import com.spring.chihnpph22615_asigmnet_springboot.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping("/list")
    public String productPage(Model model,
                              @RequestParam(name = "pageNum", required = false, defaultValue = "1") Integer pageNum,
                              @RequestParam(name = "pageSize", required = false, defaultValue = "4") Integer pageSize
    ) {
        model.addAttribute("categories", categoryRepository.findAll());
        Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
        Page<Product> page = productRepository.findAll(pageable);
        model.addAttribute("totalPage", page.getTotalPages());
        model.addAttribute("list", page.getContent());
        return "index";
    }

    @GetMapping("/list/search")
    public String productFind(Model model,
                              @RequestParam(name = "pageNum", required = false, defaultValue = "1") Integer pageNum,
                              @RequestParam(name = "pageSize", required = false, defaultValue = "4") Integer pageSize,
                              @RequestParam("name") String name
    ) {
        model.addAttribute("categories", categoryRepository.findAll());
        List<Product> listS = productRepository.findByNameContainingIgnoreCase(name);
        Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
        Page<Product> page = productRepository.findByNameContainingIgnoreCase(name, pageable);
        model.addAttribute("totalPage", page.getTotalPages());
        model.addAttribute("list", listS);
        return "index";
    }

    @GetMapping("/detail/{id}")
    public String detailPage(@PathVariable Integer id, Model model) {
        model.addAttribute("product", productRepository.findById(id).orElse(null));
        model.addAttribute("categories", categoryRepository.findAll());
        return "detail";
    }

    @GetMapping("/list/cate/{id}")
    public String categoryFind(Model model,
                               @RequestParam(name = "pageNum", required = false, defaultValue = "1") Integer pageNum,
                               @RequestParam(name = "pageSize", required = false, defaultValue = "4") Integer pageSize,
                               @PathVariable Integer id
    ) {
        model.addAttribute("categories", categoryRepository.findAll());
        List<Product> listC = productRepository.findByCategory_Id(id);
        Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
        Page<Product> page = productRepository.findAllByCategory_Id(id, pageable);
        model.addAttribute("totalPage", page.getTotalPages());
        model.addAttribute("list", listC);
        return "index";
    }
}
