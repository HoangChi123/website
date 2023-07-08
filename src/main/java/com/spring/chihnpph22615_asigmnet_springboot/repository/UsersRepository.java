package com.spring.chihnpph22615_asigmnet_springboot.repository;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {

	Users findByUsernameAndPassword(String username, String password);

}