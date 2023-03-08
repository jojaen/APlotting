package com.cos.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.exam.service.MembershipService;


@Controller
public class membershipController {
	
	@Autowired
	private MembershipService membershipService;

	//멤버십 이동
	@GetMapping("/auth/membership")
	public String membership() {
		return "membership/payMain";
	}
	
	@PostMapping("/paymentresult/{subscribeName}/{subscribePrice}")
	public String paymentresult(@RequestParam String[] key, Model model) {
		for (int i = 0; i < key.length; i++) {
			System.out.println("xxx"+key[i]);
		}
		model.addAttribute("answer", key);
		
		return "/membership/payDetail";
	}
	 
	@GetMapping("/membership/myPayList") 
	public String myPayList(Model model) { 
    model.addAttribute("payment", membershipService.구매내역보기());
	return "membership/myPayList"; //기존에 있던 값을 뿌려주고 그것을 업데이트하는 것이다.
	}


}
