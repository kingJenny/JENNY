package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.BoardQnaVO;
import com.ting.domain.PaymentVO;
import com.ting.domain.TingBoardVO;

@Repository("boardQnaDAO")
public class BoardQnaDAOImpl implements BoardQnaDAO{

	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void boardQnaAdd(BoardQnaVO vo) {
		mybatis.insert("boardQnaDAO.add", vo);
		
	}
	public List<BoardQnaVO> selectQnAList(BoardQnaVO vo) {
		System.out.println("===> DAO selectQnAList() 문의테스트DAO");
		return mybatis.selectList("boardQnaDAO.selectQnAList", vo);
	}
	public BoardQnaVO getQnABoard(BoardQnaVO vo) {
		System.out.println("===> Mybatis getBoard() �샇異�");
		return mybatis.selectOne("boardQnaDAO.getQnABoard", vo);
	}

}
