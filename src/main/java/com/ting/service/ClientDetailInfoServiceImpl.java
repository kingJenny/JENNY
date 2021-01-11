package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.ClientDetailInfoDAOImpl;
import com.ting.domain.ClientDetailInfoVO;


@Service("clientDetailInfoService")
public class ClientDetailInfoServiceImpl implements ClientDetailInfoService{

	//dao불러오는곳
	@Autowired
	private ClientDetailInfoDAOImpl clientDetailInfoDAO;
	
	//메소드시작
	public void insertClientDetailInfo(ClientDetailInfoVO vo) {

		clientDetailInfoDAO.insertClientDetailInfo(vo);
	}
	
	@Override
	public void updatePhotoClientDetailInfo(ClientDetailInfoVO vo) {
		clientDetailInfoDAO.updatePhotoClientDetailInfo(vo);
		
	}

	public void updateClientDetailInfo(ClientDetailInfoVO vo) {
		clientDetailInfoDAO.updateClientDetailInfo(vo);
	}

	public void deleteClientDetailInfo(ClientDetailInfoVO vo) {
		clientDetailInfoDAO.deleteClientDetailInfo(vo);
	}

	public ClientDetailInfoVO getClientDetailInfo(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.getClientDetailInfo(vo);
	}

	public List<ClientDetailInfoVO> getClientDetailInfoList(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.getClientDetailInfoList(vo);
	}
	
	//하트 개수
	public	int getTotalHeart(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.getTotalHeart(vo);
	};
	// 하트소모
	public void reduceTotalHeart(ClientDetailInfoVO vo) {
		clientDetailInfoDAO.reduceTotalHeart(vo);
	};
	
	// 하트 증가
	public	void increaseTotalHeartPerDay() {
		clientDetailInfoDAO.increaseTotalHeartPerDay();
	};
	
	// 같은 타입 회원 조회
	public ClientDetailInfoVO Sametypeidx(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.Sametypeidx(vo);
	};
	
	// 이외 두명의 이성
	public List<ClientDetailInfoVO> Recommendidx(ClientDetailInfoVO vo){
		return clientDetailInfoDAO.Recommendidx(vo);
	};
	// 닉네임 중복 체크 
	public int nickChk(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.nickChk(vo);		
	}
	
	// 금일 좋아요
	public int getClientlike(ClientDetailInfoVO vo) {
		return clientDetailInfoDAO.getClientlike(vo);		
	}
}
