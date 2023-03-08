package com.cos.exam.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.boot.model.naming.IllegalIdentifierException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.exam.config.auth.PrincipalDetail;
import com.cos.exam.service.ReviewBoardService;
import com.cos.exam.service.TeacherPicService;

@Controller
public class ReviewBoardController {
   
   @Autowired
   private ReviewBoardService boardService;
   
   @Autowired
   private TeacherPicService teacherPicService;
   
   
   
   @GetMapping("/board/reviewBoardList")
   public String newsMain(@PageableDefault(size=5, sort="id", direction=Sort.Direction.DESC) Pageable pageable, Model model) {
      int pageNumber = boardService.리뷰목록(pageable).getPageable().getPageNumber();  //현재페이지
      int totalPages = boardService.리뷰목록(pageable).getTotalPages(); //총 페이지 수
      int pageBlock = 5;  //숫자 블럭 수 1부터 10
      int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1;
      int endBlockPage = startBlockPage+pageBlock-1;
      int orgend = endBlockPage;
      endBlockPage = totalPages<endBlockPage? totalPages:endBlockPage;
      System.out.println("@#$%$#$"+totalPages);
      
      model.addAttribute("startBlockPage", startBlockPage);
      model.addAttribute("endBlockPage", endBlockPage);
      model.addAttribute("board", boardService.리뷰목록(pageable));
      model.addAttribute("orgend", orgend);
      return "board/reviewBoardList";
   }

   
   @RequestMapping("/board/reviewBoardSaveForm")
   public String board() {
      return "board/reviewBoardSaveForm";
   }
   

   //
   @GetMapping("/board/{id}")
   public String findById(@PathVariable int id, Model model, @AuthenticationPrincipal PrincipalDetail principal, HttpSession httpSession, 
		   @PageableDefault(size=5, sort="id", direction=Sort.Direction.DESC) Pageable pageable) {
      boardService.updateCount(id);
      model.addAttribute("board", boardService.리뷰보기(id));
      
      String str = "이전글이 없습니다.";
      String str2 = "다음글이 없습니다.";
            
      if((id-1) == 0) {
         model.addAttribute("board_pre", str);
      } else {
         model.addAttribute("board_pre", boardService.리뷰보기(id-1));
      }
      
      try {
         model.addAttribute("board_nxt", boardService.리뷰보기(id+1));
      } catch(IllegalIdentifierException e) {
         System.out.println("eeeeeee: " + e);
         model.addAttribute("board_nxt", str2);
      }
      
      model.addAttribute("teacherPic1", teacherPicService.선생님사진보기(1));
      model.addAttribute("teacherPic2", teacherPicService.선생님사진보기(2));
      model.addAttribute("teacherPic3", teacherPicService.선생님사진보기(3));
      model.addAttribute("teacherPic4", teacherPicService.선생님사진보기(4));
      model.addAttribute("teacherPic5", teacherPicService.선생님사진보기(5));
      
      Map<Integer, String> setStar = new HashMap<Integer, String>();
      setStar.put(0, "☆☆☆☆☆");
      setStar.put(1, "★☆☆☆☆");
      setStar.put(2, "★★☆☆☆");
      setStar.put(3, "★★★☆☆");
      setStar.put(4, "★★★★☆");
      setStar.put(5, "★★★★★");

      model.addAttribute("setStar", setStar);
      
      return "board/reviewBoardDetail";
   }
   
   //글 수정하기  
   @GetMapping("/board/{id}/reviewBoardUpdateForm") 
   public String updateForm(@PathVariable int id,Model model) { 
    model.addAttribute("board", boardService.리뷰보기(id));
   return "board/reviewBoardUpdateForm"; //기존에 있던 값을 뿌려주고 그것을 업데이트하는 것이다.
   }
   
   
   
   /*
    * Map ratingOptions = new HashMap(); ratingOptions.put(0, "☆☆☆☆☆");
    * ratingOptions.put(1, "★☆☆☆☆"); ratingOptions.put(2, "★★☆☆☆");
    * ratingOptions.put(3, "★★★☆☆"); ratingOptions.put(4, "★★★★☆");
    * ratingOptions.put(5, "★★★★★"); model.addAttribute("ratingOptions",
    * ratingOptions);
    * 
    * 
    * ★★★★★
    */
    
   

}