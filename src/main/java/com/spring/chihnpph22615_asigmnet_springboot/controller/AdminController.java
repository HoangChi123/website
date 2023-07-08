package com.spring.chihnpph22615_asigmnet_springboot.controller;


import com.spring.chihnpph22615_asigmnet_springboot.entity.Category;
import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;
import com.spring.chihnpph22615_asigmnet_springboot.entity.Users;
import com.spring.chihnpph22615_asigmnet_springboot.enums.Role;
import com.spring.chihnpph22615_asigmnet_springboot.repository.CategoryRepository;
import com.spring.chihnpph22615_asigmnet_springboot.repository.ProductRepository;
import com.spring.chihnpph22615_asigmnet_springboot.repository.UsersRepository;
import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    ServletContext context;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/category/edit/{id}")
    public String showCreateCategory(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("category", categoryRepository.findById(id).orElse(null));
        return "admin/category/edit";
    }

    @GetMapping("/category/delete/{id}")
    public String deleteCategory(Model model, @PathVariable("id") Integer id) {
        categoryRepository.deleteById(id);
        return "redirect:/admin/category/list";
    }

    @PostMapping("/category/create")
    public String saveCategory(Model model,
                               @Valid @ModelAttribute("categroy") Category category,
                               BindingResult result,
                               RedirectAttributes attributes
    ) {
        if (result.hasErrors()) {
            return "admin/category/list";
        }
        categoryRepository.save(category);
        attributes.addFlashAttribute("message", "Create new category was successfully");
        return "redirect:/admin/category/list";
    }

    @GetMapping("/category/list")
    public String showCategoryList(Model model) {
        model.addAttribute("category", new Category());
        List<Category> categories = categoryRepository.findAll();
        System.out.println(categories.size());
        model.addAttribute("categories", categories);
        return "admin/category/list";
    }

    //User

    @GetMapping("/user/edit/{id}")
    public String editUser(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("user", usersRepository.findById(id).orElse(null));
        model.addAttribute("roles", Role.values());
        return "admin/user/edit";
    }

    @GetMapping("/user/delete/{id}")
    public String deleteUser(Model model, @PathVariable("id") Integer id) {
        usersRepository.deleteById(id);
        return "redirect:/admin/user/list";
    }

    @PostMapping("/user/create")
    public String saveUser(Model model,
                           @Valid @ModelAttribute("user") Users users,
                           BindingResult result,
                           RedirectAttributes attributes
    ) {
        if (result.hasErrors()) {
            return "admin/user/list";
        }
        usersRepository.save(users);
        attributes.addFlashAttribute("message", "Create new user was successfully");
        return "redirect:/admin/user/list";
    }

    @GetMapping("/user/list")
    public String showUserList(Model model) {
        model.addAttribute("user", new Users());
        List<Users> users = usersRepository.findAll();
        model.addAttribute("users", users);
        model.addAttribute("roles", Role.values());
        return "admin/user/list";
    }

    //product

    @GetMapping("/product/edit/{id}")
    public String editProduct(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("product", productRepository.findById(id).orElse(null));
        model.addAttribute("categories", categoryRepository.findAll());
        return "admin/product/edit";
    }

    @GetMapping("/product/delete/{id}")
    public String deleteProduct(Model model, @PathVariable("id") Integer id) {
        productRepository.deleteById(id);
        return "redirect:/admin/product/list";
    }

    @PostMapping("/product/create")
    public String saveProduct(Model model,
                              @Valid @ModelAttribute("product") Product product,
                              BindingResult result,
                              RedirectAttributes attributes
            , @RequestParam("imageProduct") MultipartFile file

    ) {
        if (result.hasErrors()) {
            return "admin/product/list";
        }
		String fileOriginal = file.getOriginalFilename();
		String fileDest = context.getRealPath("/upload/" +  fileOriginal);
		try {
			file.transferTo(new File(fileDest));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		product.setImage(fileOriginal);
        productRepository.save(product);
        attributes.addFlashAttribute("message", "Create new product was successfully");
        return "redirect:/admin/product/list";
    }

    @GetMapping("/product/list")
    public String showProductList(Model model) {
        model.addAttribute("product", new Product());
        List<Product> list = productRepository.findAll();
        model.addAttribute("list", list);
        model.addAttribute("categories", categoryRepository.findAll());
        return "admin/product/list";
    }
}
