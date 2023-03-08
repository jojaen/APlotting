package com.cos.exam.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class membershipController2 {
	@PostMapping("/payment/{subscribeName}/{subscribePrice}")
	public String[] payment(@PathVariable String subscribeName, @PathVariable String subscribePrice) {
		System.out.println("payment controller 호출"+subscribeName+subscribePrice);
		String[] totail = {subscribeName,subscribePrice};
		return totail;
	}
}
