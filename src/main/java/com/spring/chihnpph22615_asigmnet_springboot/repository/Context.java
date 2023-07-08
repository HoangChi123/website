package com.spring.chihnpph22615_asigmnet_springboot.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Context {

    @Autowired
    private UsersRepository userRepo;

    public UsersRepository getUserRepo() {
        return userRepo;
    }

}