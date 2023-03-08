package com.cos.exam.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class examController {
	@PostMapping("/exam1_loading/{data}")
	public int[] exam1_loading(@PathVariable int[] data) {
		return data;
	}
	@PostMapping("/exam2_loading/{data}")
	public int[] exam2_loading(@PathVariable int[] data) {
		return data;
	}
	@PostMapping("/mock1_loading/{data}")
	public int[] mock1_loading(@PathVariable int[] data) {
		return data;
	}
	@PostMapping("/mock2_loading/{data}")
	public int[] mock2_loading(@PathVariable int[] data) {
		return data;
	}
}
