package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.BoardQnaDAO;
import com.ting.domain.BoardQnaVO;
import com.ting.domain.PaymentVO;
import com.ting.domain.TingBoardVO;

@Service("boardQnaService")
public class BoardQnaServiceImpl implements BoardQnaService{

	@Autowired
	private BoardQnaDAO boardQnaDAO;
	
	@Override
	public void boardQnaAdd(BoardQnaVO vo) {
		System.out.println("Test"+vo.toString());
		boardQnaDAO.boardQnaAdd(vo);
		
	}
	public List<BoardQnaVO> selectQnAList(BoardQnaVO vo) {
		System.out.println("===> service selectQnAList() 문의테스트서비스임플");
		return boardQnaDAO.selectQnAList(vo);
		
	}
	public BoardQnaVO getQnABoard(BoardQnaVO vo) {
		
		return boardQnaDAO.getQnABoard(vo);
	}


}
