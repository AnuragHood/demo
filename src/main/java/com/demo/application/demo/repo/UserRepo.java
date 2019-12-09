package com.demo.application.demo.repo;

import com.demo.application.demo.bean.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Long> {
    User findByUsername(String username);
}
