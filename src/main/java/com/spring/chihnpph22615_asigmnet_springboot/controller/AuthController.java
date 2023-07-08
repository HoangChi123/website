package com.spring.chihnpph22615_asigmnet_springboot.controller;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Users;
import com.spring.chihnpph22615_asigmnet_springboot.enums.Role;
import com.spring.chihnpph22615_asigmnet_springboot.repository.CategoryRepository;
import com.spring.chihnpph22615_asigmnet_springboot.service.Auth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/eye-plus/")
public class AuthController {
    @Autowired
    private Auth _auth;
    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String cuaVao() {
        return "login";
    }

    @RequestMapping(value = "home", method = RequestMethod.POST)
    public String dangNhap(Model model, String userName, String pass) {
        Users user = _auth.dangNhap(userName, pass);
        model.addAttribute("userLogged", userName);
        if (user == null) {
            model.addAttribute("logic", 1);
            return "login";
        } else if (user.getRole() == Role.ADMIN) {
            return "redirect:/admin/product/list";
        } else {
            return "redirect:/product/list";
        }
    }
}
