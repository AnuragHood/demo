package com.demo.application.demo.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.demo.application.demo.bean.Demo;
import com.demo.application.demo.service.EntityServiceImpl;

import net.bytebuddy.implementation.bytecode.Throw;

@Controller
@RequestMapping("/home")
public class MainController {
	ModelAndView mv = null;
	@Autowired
	EntityServiceImpl entityServiceImpl;
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@GetMapping("/show")
	public ModelAndView registration() {
		mv = new ModelAndView("home");
		List<Demo> itemList = (List<Demo>) entityServiceImpl.getDemo();
		logger.info("going out saveEntity-->>{}", itemList.toString());
		mv.addObject("itemList",itemList);
		return mv;
	}

	@PostMapping("/saveEntity")
	@ResponseBody
	public ModelAndView saveEntity(@RequestBody Demo demo) throws NullPointerException {
		logger.info("inside saveEntity-->>{}", demo.toString());
		mv = new ModelAndView("home");
		if (demo == null) {
			throw new NullPointerException();

		} else {
			entityServiceImpl.createDemo(demo);
		}
		List<Demo> itemList = (List<Demo>) entityServiceImpl.getDemo();
		logger.info("going out saveEntity-->>{}", itemList.toString());
		mv.addObject("itemList",itemList);

		return mv;
	}
}
