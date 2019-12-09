package com.demo.application.demo.repo;

import com.demo.application.demo.bean.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepo extends JpaRepository<Role,Long> {
}
