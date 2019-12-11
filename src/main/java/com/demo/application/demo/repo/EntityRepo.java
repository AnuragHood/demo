package com.demo.application.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.application.demo.bean.Demo;

public interface EntityRepo extends JpaRepository<Demo, Long> {

}
