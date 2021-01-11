package com.ting.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ReplyVO;
import com.ting.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	private ReplyService replyService;
	
	// ��� ��ȸ
	
	// ��� �ۼ�
	@RequestMapping("/write")
	public String Wirte(ReplyVO vo, HttpServletRequest request) {

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.write(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}
	// ��� ����
	@RequestMapping("/modifyReply")
	public String Modify(ReplyVO vo, HttpServletRequest request) {
		System.out.println("내용:"+vo.getContent());

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.modify(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}
	
	// ��� ����
	@RequestMapping("/deleteReply")
	public String Delete(ReplyVO vo, HttpServletRequest request) {

		vo.setRegId((String)request.getSession().getAttribute("UID"));
		
		System.out.println("======");
		replyService.delete(vo);
		
		return "redirect:/Tingtoday_0_view?boardIdx=" + vo.getBoardIdx();
	}

}
