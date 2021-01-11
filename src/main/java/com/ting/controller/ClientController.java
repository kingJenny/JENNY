package com.ting.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.IdealTypeVO;
import com.ting.domain.InterestVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.domain.MbtiExplanationVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.ClientInterestService;
import com.ting.service.IdealRecommendationService;
import com.ting.service.IdealTypeService;
import com.ting.service.InterestService;
import com.ting.service.MbtiExplanationService;

@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;
	@Autowired
	private MbtiExplanationService mbtiExplanationService;
	@Autowired
	private InterestService interestService;
	@Autowired
	private ClientInterestService clientInterestService;
	
	@Autowired
	private IdealTypeService idealTypeService;
	
	@Autowired
	private IdealRecommendationService idealRecommendationService;
	
	//회원 상세정보 입력 
	@RequestMapping("/insertClientDetailInfo")
	public String insertClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {
		
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.insertClientDetailInfo(vo);
		session.setAttribute("nickname", vo.getNickname());
		
		//같은 타입 1명 추천
		int sametypeIdx=clientDetailInfoService.Sametypeidx(vo).getClientIdx();
		System.out.println(sametypeIdx);
		IdealRecommendationVO idealRecommendationVO=new IdealRecommendationVO();
		idealRecommendationVO.setClientIdx(vo.getClientIdx());
		idealRecommendationVO.setRecommendedPeopleIdx(sametypeIdx);
		idealRecommendationVO.setRecommendtype(1);
		idealRecommendationService.SametypeRecommend(idealRecommendationVO);
		
		//이성 2명 추천
		List<ClientDetailInfoVO> recommendIdxs= clientDetailInfoService.Recommendidx(vo);
		for(ClientDetailInfoVO recommendIdx:recommendIdxs) {
			IdealRecommendationVO idealRecommendationVO2=new IdealRecommendationVO();
			idealRecommendationVO2.setClientIdx(vo.getClientIdx());
			idealRecommendationVO2.setRecommendedPeopleIdx(recommendIdx.getClientIdx());
			System.out.println(recommendIdx.getClientIdx());
			idealRecommendationVO2.setRecommendtype(0);
			idealRecommendationService.SametypeRecommend(idealRecommendationVO2);
		}
		return "redirect:/Client_4_interestInsert";
	}
	
	//고객 사진 입력 
	   @RequestMapping("/updatePhotoClientDetailInfo")
	   public String updatePhotoClientDetailInfo(ClientDetailInfoVO vo,HttpSession session,MultipartHttpServletRequest file,HttpServletRequest request) throws UnsupportedEncodingException {
	      //이미지 넣는 부분
	      request.setCharacterEncoding("UTF-8");
	         String r_path = session.getServletContext().getRealPath("/");
	         System.out.println("Path :"+r_path);
	         String img_path ="resources\\upload\\";
	         System.out.println("imgPath :"+r_path+img_path);
	         StringBuffer path = new StringBuffer();
	         path.append(r_path).append(img_path); 
	      MultipartFile photo=vo.getFile();
	      String originFileName = photo.getOriginalFilename();
	      path.append(originFileName);
	      vo.setPhoto(originFileName);
	      vo.setClientIdx((int)session.getAttribute("clientIdx"));
	         System.out.println("FullPath :"+path);
	       //파일 업로드 실행 

	         File f = new File(path.toString()); // 실제 이미지가 저장될 경로
	         try {
	            photo.transferTo(f); // 스프링의 transferTo를 호출해서 이미지를 저장장소에 복사 
	            System.out.println(photo);
	         } catch (IllegalStateException | IOException e) {

	         // TODO Auto-generated catch block
	         e.printStackTrace();
	         }
	      
	      clientDetailInfoService.updatePhotoClientDetailInfo(vo);
	      System.out.println("사진업로드 성공");
	      return "redirect:/index";
	   }
	
	//이상형 정보 입력 
	@RequestMapping("/insertidealType")
	public String insertidealType(IdealTypeVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		idealTypeService.insertIdealType(vo);
		return "redirect:/index";
	}
	
	//마이페이지 보기 메소드
	@RequestMapping("/Client_0_main")
	public String Client_0_main(ClientDetailInfoVO vo,MbtiExplanationVO mvo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO myDetailInfo = clientDetailInfoService.getClientDetailInfo(vo);
		MbtiExplanationVO myMbtiExplanation = mbtiExplanationService.getMbtiExplanation(vo);
		int getlike = clientDetailInfoService.getClientlike(vo);
		m.addAttribute("myDetailInfo", myDetailInfo);
		m.addAttribute("myMbtiExplanation", myMbtiExplanation);
		m.addAttribute("getlike", getlike);
		return "/Client_0_main";
	}
	
	
	//마이페이지 수정창 보기-상세정보
	@RequestMapping("/Client_1_info_update")
	public String Client_1_info_update(ClientDetailInfoVO vo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		m.addAttribute("myDetailInfo", result);
		return "/Client_1_info_update";
	}
	

	//마이페이지 수정
	@RequestMapping("/updateClientDetailInfo")
	public String UpdateClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.updateClientDetailInfo(vo);;
		return "redirect:/Client_0_main";
	}
	
	
	
	//나에게 좋아요보낸 사람중 닉네임눌러서 상세정보 들어갔을때
	@RequestMapping("/Client_2_Ting_like_reply")
	public String getLikeReceiveList2(ClientDetailInfoVO vo1,LikeReceiveVO vo2, Model m,HttpSession session) {
		vo2.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo1);
		vo1.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result2 = clientDetailInfoService.getClientDetailInfo(vo1);
		m.addAttribute("clientDetailInfo",result);
		m.addAttribute("myClientDetailInfo",result2);
		vo1.setClientIdx((int)session.getAttribute("clientIdx"))	;	
		int heartCnt= clientDetailInfoService.getTotalHeart(vo1);
		m.addAttribute("heartCnt", heartCnt);
		return "/Client_2_Ting_like_reply";
				}
	
	
	
	
	//페이지 이동
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "/"+step;
	}
	// 닉네임 중복 체크
	@ResponseBody
	@RequestMapping(value="/nickChk", method = RequestMethod.POST)
	public int nickChk(ClientDetailInfoVO vo) {
		int result = clientDetailInfoService.nickChk(vo);
		return result;
	}
	
	
}
