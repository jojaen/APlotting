package com.cos.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.exam.service.NoticeBoardService;

@Controller
public class NoticeBoardController {
	
	@Autowired
	private NoticeBoardService boardService;
	

	@GetMapping("/nboard/noticeBoardList")
	public String newsMain(@PageableDefault(size=5, sort="id", direction=Sort.Direction.DESC) Pageable pageable, Model model) {
		int pageNumber = boardService.공지목록(pageable).getPageable().getPageNumber();  //현재페이지
		int totalPages = boardService.공지목록(pageable).getTotalPages(); //총 페이지 수
		int pageBlock = 5;  //숫자 블럭 수 1부터 10
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1;
		// pageNumber:0~4 => startBlockPage:1  endBlockPage:5
		// pageNumber:5~9 => startBlockPage:6  endBlockPage:10 
		int endBlockPage = startBlockPage+pageBlock-1;
		int orgend = endBlockPage;
		endBlockPage = totalPages<endBlockPage? totalPages:endBlockPage;
		System.out.println("@#$%$#$"+totalPages);
		
		model.addAttribute("startBlockPage", startBlockPage);
		model.addAttribute("endBlockPage", endBlockPage);
		model.addAttribute("nboard", boardService.공지목록(pageable));
		model.addAttribute("orgend", orgend);
		return "nboard/noticeBoardList";
	}

	
	@RequestMapping("/nboard/noticeBoardSaveForm")
	public String nboard() {
		return "nboard/noticeBoardSaveForm";
	}
	

	//
	@GetMapping("/nboard/{id}")
	public String findById(@PathVariable int id, Model model) {
		boardService.updateCount(id);
		model.addAttribute("nboard", boardService.공지보기(id));
		return "nboard/noticeBoardDetail";
	}

	
	//글 수정하기  
	@GetMapping("/nboard/{id}/noticeBoardUpdateForm") 
	public String updateForm(@PathVariable int id,Model model) { 
    model.addAttribute("nboard", boardService.공지보기(id));
	return "nboard/noticeBoardUpdateForm"; //기존에 있던 값을 뿌려주고 그것을 업데이트하는 것이다.
	}
}
