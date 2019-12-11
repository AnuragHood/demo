package com.demo.application.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.application.demo.bean.Demo;
import com.demo.application.demo.repo.EntityRepo;

@Service
public class EntityServiceImpl {
	@Autowired
	EntityRepo entityRepo;

	public Demo createDemo(Demo demo) {

		return entityRepo.save(demo);
	}

	public Iterable<Demo> getDemo() {
		return entityRepo.findAll();
	}

}
