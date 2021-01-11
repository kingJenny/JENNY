package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.BoardQnaVO;
import com.ting.domain.PaymentVO;
import com.ting.domain.ReplyVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.BoardQnaService;

@Controller
public class BoardQnaController {

	@Autowired
	private BoardQnaService boardQnaService;
	
	//문의 insert
	@RequestMapping("/qna_add")
	public String board_qna_add(BoardQnaVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		boardQnaService.boardQnaAdd(vo);
		return "redirect:/selectQnAList";
	}
	
	//신고 insert
	@RequestMapping("/ask_result")
	public String report_result(BoardQnaVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		boardQnaService.boardQnaAdd(vo);
		return "/ask_result.jsp";
	}
	//문의내역List
	@RequestMapping("/selectQnAList")
	public String selectQnAList(BoardQnaVO vo, Model m,HttpSession session) {			
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		System.out.println("문의테스트1");
		List<BoardQnaVO> qnaList = boardQnaService.selectQnAList(vo);		
		m.addAttribute("qnaList", qnaList);
		return "/QnAList";
	}

	   @RequestMapping("/QnAList_view")
	   public String getQnABoard(HttpSession session,HttpServletRequest request,BoardQnaVO vo,Model m) {
		   BoardQnaVO result = boardQnaService.getQnABoard(vo);
	      m.addAttribute("board",result);

	      return "/QnAList_view";
	   }
	  }
