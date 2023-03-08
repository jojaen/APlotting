package com.cos.exam.apiController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.exam.config.auth.PrincipalDetail;
import com.cos.exam.dto.ResponseDto;
import com.cos.exam.model.Membership;
import com.cos.exam.service.MembershipService;


@RestController
public class membershipApiController {
	@Autowired
	private MembershipService membershipService;
	
	@PostMapping("/payment")
	public ResponseDto<Integer> paymentregister(@RequestBody Membership membership, @AuthenticationPrincipal PrincipalDetail principal){
		System.out.println("payment 호출"+membership.getSubscribeName());
		membershipService.구매하기(membership, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}

}
