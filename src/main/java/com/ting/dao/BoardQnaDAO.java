package com.ting.dao;

import java.util.List;

import com.ting.domain.BoardQnaVO;
import com.ting.domain.TingBoardVO;

public interface BoardQnaDAO {

	public void boardQnaAdd(BoardQnaVO vo); 
	
	public List<BoardQnaVO> selectQnAList(BoardQnaVO vo);

	public BoardQnaVO getQnABoard(BoardQnaVO vo);
}
