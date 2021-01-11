package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;

@Repository("clientDetailInfoDAO")
public class ClientDetailInfoDAOImpl implements ClientDetailInfoDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	public void insertClientDetailInfo(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("ClientDetailInfoDAO.insertClientDetailInfo", vo);
	}
	
	public void updatePhotoClientDetailInfo(ClientDetailInfoVO vo) {
		mybatis.update("ClientDetailInfoDAO.updatePhotoClientDetailInfo", vo);
		
	}

	public void updateClientDetailInfo(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("ClientDetailInfoDAO.updateClientDetailInfo", vo);
	}

	public void deleteClientDetailInfo(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("ClientDetailInfoDAO.deleteClientDetailInfo", vo);
	}

	public ClientDetailInfoVO getClientDetailInfo(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return mybatis.selectOne("ClientDetailInfoDAO.getClientDetailInfo", vo);
	}
	
	public List<ClientDetailInfoVO> getClientDetailInfoList(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("ClientDetailInfoDAO.getClientDetailInfoList", vo);
	}
	
	//하트 개수
	public int getTotalHeart(ClientDetailInfoVO vo) {
		return mybatis.selectOne("ClientDetailInfoDAO.getTotalHeart", vo);
	};
	
	// 하트 소모
	public void reduceTotalHeart(ClientDetailInfoVO vo) {
		mybatis.update("ClientDetailInfoDAO.reduceTotalHeart", vo);
	};
	
	// 하트 증가
	public	void increaseTotalHeartPerDay() {
		mybatis.update("ClientDetailInfoDAO.increaseTotalHeartPerDay");
	};
	
	// 같은 타입 회원 조회
	public ClientDetailInfoVO Sametypeidx(ClientDetailInfoVO vo) {
		return mybatis.selectOne("ClientDetailInfoDAO.sametypeidx", vo);
	};
	
	// 이외 두명의 이성
	public List<ClientDetailInfoVO> Recommendidx(ClientDetailInfoVO vo){
		return mybatis.selectList("ClientDetailInfoDAO.recommendidx", vo);
	};
	// 닉네임 중복 체크
	public int  nickChk(ClientDetailInfoVO vo) {
		System.out.println(vo.getNickname());
		System.out.println("===> Mybatis nickChk() 호출");
		int result = mybatis.selectOne("ClientDetailInfoDAO.nickChk", vo);
		return result;
	};
	
	public int  getClientlike(ClientDetailInfoVO vo) {
		int result = mybatis.selectOne("ClientDetailInfoDAO.getClientlike", vo);
		return result;
	};
}
