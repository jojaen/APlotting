package com.cos.exam.apiController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.exam.dto.ResponseDto;
import com.cos.exam.model.OEUsers;
import com.cos.exam.service.UserService;


@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody OEUsers user){
		userService.회원가입(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	@PostMapping("/auth/joinProc2")
	public ResponseDto<Integer> save2(@RequestBody OEUsers user){
		userService.회원가입2(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/user")
	public ResponseDto<Integer> update(@RequestBody OEUsers user){ //json을 받을 것이기에 requestBody를 쓴다.
		userService.회원정보수정(user);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	// id 중복검사
	@PostMapping("/auth/idCheck/{id}")
	public ResponseDto<Integer> idCheck(@PathVariable String id) {
		System.out.println("idcheck 확인" + id);
		int result = (int) userService.idCheck(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), result);
	}
	
	// email 중복검사
	@PostMapping("/auth/user/findUserEmail")
	public ResponseDto<OEUsers> findUserEmail(@RequestBody OEUsers user) {
		System.out.println("넘어온 data의 email: " + user.getEmail());
		OEUsers foundUser = userService.findUserEmail(user.getEmail());
		System.out.println("findUserEmail" + foundUser);
		return new ResponseDto<OEUsers>(HttpStatus.OK.value(), foundUser);
	}
	
	//id 찾기
	@PostMapping("/auth/user/findUserId")
	public ResponseDto<OEUsers> findUserId(@RequestBody OEUsers user) {
		System.out.println("회원정보 컨트롤러" + user.getName() + user.getTel());
		
		OEUsers foundUser = userService.findUserId(user.getName(),user.getTel());
		return new ResponseDto<OEUsers>(HttpStatus.OK.value(),foundUser);
	}
	
	//비밀번호 찾기
	@PostMapping("/auth/user/findUserPwd")
	public ResponseDto<OEUsers> findUserPwd(@RequestBody OEUsers user) {
		System.out.println("회원정보 컨트롤러" + user.getName() + user.getTel() +user.getUsername());
		
		OEUsers foundUser = userService.findUserPwd(user.getName(),user.getTel(),user.getUsername());
		return new ResponseDto<OEUsers>(HttpStatus.OK.value(),foundUser);
	}
	
	//비밀번호 리셋
	@PutMapping("/auth/user/resetPwd")
	public ResponseDto<Integer> resetUserPassword(@RequestBody OEUsers user) {
		userService.resetUserPassword(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}


}
