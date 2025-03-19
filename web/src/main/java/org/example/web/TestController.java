package org.example.web;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lee")
public class TestController {

    @GetMapping("/woojin")
    public String aa() {
        return "woojin1";
    }
}
