package com.example.shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.shop.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
