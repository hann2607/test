package com.poly.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class MyController {
	@GetMapping("/myendpoint")
	  public String myEndpoint() {
	    return "Hello world!";
	  }
}
