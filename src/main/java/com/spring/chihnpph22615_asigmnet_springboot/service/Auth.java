package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.repository.Context;
import com.spring.chihnpph22615_asigmnet_springboot.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Auth implements IAuth {
    @Autowired
    private Context _context;

    @Override
    public Users dangNhap(String userName, String pass) {
        Users user = _context.getUserRepo().findByUsernameAndPassword(userName, pass);
        if (user == null) {
            return null;
        } else {
            return user;
        }
    }
}
