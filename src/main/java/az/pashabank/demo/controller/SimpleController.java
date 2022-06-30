package az.pashabank.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class SimpleController {

    @GetMapping("/internship")
    public String first(){
    return "Hello Docker";
}
}