package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    public HomeController() {
        System.out.println("HomeController.HomeController");
    }

    @GetMapping("/home")
    public String home(){
        return "home";
    }
}
