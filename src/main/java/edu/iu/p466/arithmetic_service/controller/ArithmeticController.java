package edu.iu.p466.arithmetic_service.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ArithmeticController {

    @GetMapping("/")
    public String greeting() {
        return "Welcome to the Arithmetic Service!";
    }

    @GetMapping("/add/{n}/{m}")
    public String add(@PathVariable int n, @PathVariable int m) {
        return String.valueOf(n + m);
    }
} 