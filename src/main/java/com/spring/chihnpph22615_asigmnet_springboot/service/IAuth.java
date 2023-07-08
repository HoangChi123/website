package com.spring.chihnpph22615_asigmnet_springboot.service;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Users;

public interface IAuth {
    public Users dangNhap(String userName, String pass);
}
