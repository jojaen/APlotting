package com.cos.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.exam.service.ExamService;
import com.cos.exam.service.NoticeBoardService;
import com.cos.exam.service.ReviewBoardService;
import com.cos.exam.service.Test_LocService;
import com.cos.exam.service.VocaListService;

@Controller
public class BoardController {

	@Autowired
	private NoticeBoardService nboardService;
	@Autowired
	private ReviewBoardService rboardService;
	
	
	@Autowired
	private ExamService examservice;
	@Autowired
	private VocaListService vocaListService;

	@Autowired
	private Test_LocService locService;

	@GetMapping("/")
	public String index(Model model,
			 @PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
	      model.addAttribute("nboard", nboardService.공지목록(pageable));
	      model.addAttribute("board", rboardService.리뷰목록(pageable));
		return "index";
	}
	

	@GetMapping("/test")
	public String test() {
		return "test";
	}



	@GetMapping("/location")
	public String location(Model model, @RequestParam(value = "loc2", required = false) String loc2,
			@PageableDefault(size = 10, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		model.addAttribute("loc1", locService.고사장_강원(pageable));
		model.addAttribute("loc2", locService.고사장_경기(pageable));
		model.addAttribute("loc3", locService.고사장_경남(pageable));
		model.addAttribute("loc4", locService.고사장_경북(pageable));
		model.addAttribute("loc5", locService.고사장_광주(pageable));
		model.addAttribute("loc6", locService.고사장_대구(pageable));
		model.addAttribute("loc7", locService.고사장_대전(pageable));
		model.addAttribute("loc8", locService.고사장_부산(pageable));
		model.addAttribute("loc9", locService.고사장_서울(pageable));
		model.addAttribute("loc10", locService.고사장_세종(pageable));
		model.addAttribute("loc11", locService.고사장_울산(pageable));
		model.addAttribute("loc12", locService.고사장_인천(pageable));
		model.addAttribute("loc13", locService.고사장_전남(pageable));
		model.addAttribute("loc14", locService.고사장_전북(pageable));
		model.addAttribute("loc15", locService.고사장_제주(pageable));
		model.addAttribute("loc16", locService.고사장_충남(pageable));
		model.addAttribute("loc17", locService.고사장_충북(pageable));

		model.addAttribute("location", loc2);
		System.out.println("location: " + loc2);
		return "board/location";
	}

	@GetMapping("/accept")
	public String accept_info() {
		return "board/accept_info";
	}

	@GetMapping("/exam1")
	public String exam1(Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		model.addAttribute("exam1", examservice.시험1(pageable));
		return "board/exam1";
	}

	@GetMapping("/exam2")
	public String exam2(Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "board/exam2";
	}

	@GetMapping("/mock1")
	public String mock1(Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		int[] status = new int[100];
		for (int i = 0; i < status.length; i++) {
			status[i] = i + 1;
		}
		model.addAttribute("status", status);
		model.addAttribute("exam1", examservice.시험1(pageable));
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "board/mock_exam1";
	}
	@GetMapping("/mock2")
	public String mock2(Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		int[] status = new int[100];
		for (int i = 0; i < status.length; i++) {
			status[i] = i + 1;
		}
		model.addAttribute("status", status);
		model.addAttribute("exam1", examservice.시험1(pageable));
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "board/mock_exam2";
	}

	@PostMapping("/solution/{data}")
	public String solution(@RequestParam int[] key, Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		
		model.addAttribute("data", key);
		model.addAttribute("data_len", key.length);
		model.addAttribute("exam1", examservice.시험1(pageable));
		return "/board/solution1";
	}

	@PostMapping("/solution2/{data}")
	public String solution2(@RequestParam int[] key, Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		
		model.addAttribute("data", key);
		model.addAttribute("data_len", key.length);
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "/board/solution2";
	}

	@PostMapping("/mock1_sol/{data}")
	public String mock1_solution(@RequestParam int[] key, Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		int[] status = new int[100];
		for (int i = 0; i < status.length; i++) {
			status[i] = i + 1;
		}
		model.addAttribute("status", status);
		model.addAttribute("data", key);
		model.addAttribute("data_len", key.length);
		model.addAttribute("exam1", examservice.시험1(pageable));
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "/board/mock_solution1";
	}
	@PostMapping("/mock2_sol/{data}")
	public String mock2_sol(@RequestParam int[] key, Model model,
			@PageableDefault(size = 100, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		int[] status = new int[100];
		for (int i = 0; i < status.length; i++) {
			status[i] = i + 1;
		}
		model.addAttribute("status", status);
		model.addAttribute("data", key);
		model.addAttribute("data_len", key.length);
		model.addAttribute("exam1", examservice.시험1(pageable));
		model.addAttribute("exam2", examservice.시험2(pageable));
		return "/board/mock_solution2";
	}

	@GetMapping("/vocalist")
	public String vocalist(Model model,
			@PageableDefault(size = 1, sort = "id", direction = Sort.Direction.ASC) Pageable pageable) {
		model.addAttribute("vocalist", vocaListService.단어장(pageable));
		return "board/vocalist";
	}

	@GetMapping("/exam")
	public String exam() {
		return "board/exam";
	}

}