package com.example.hellowrld;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/lol")
    public String wht(){
        return "index";
    }
}
