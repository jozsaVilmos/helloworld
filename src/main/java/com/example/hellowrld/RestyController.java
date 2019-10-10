package com.example.hellowrld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestyController {

    @GetMapping
    public String ola(){
        return "There are 2 genders :)";
    }
}
