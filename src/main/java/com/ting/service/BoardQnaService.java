package com.ting.service;

import java.util.List;

import com.ting.domain.BoardQnaVO;
import com.ting.domain.PaymentVO;
import com.ting.domain.TingBoardVO;

public interface BoardQnaService {
	
	public void boardQnaAdd(BoardQnaVO vo); 
	
	 List<BoardQnaVO> selectQnAList(BoardQnaVO vo);
	 
	 BoardQnaVO getQnABoard(BoardQnaVO vo);
}
