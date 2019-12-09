package com.demo.application.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @GetMapping("/home/show")
    public ModelAndView registration() {
        ModelAndView mv = new ModelAndView("home");
        return mv;
    }
}
