<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">♡오늘의 추천♡</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
					<h3 class="to-animate">당신의 선택은?</h3>
					<h1 class="to-animate">${sessionScope.nickname}님은 <span style="color:red;">${heartCnt}</span>개의 하트를 가지고 있어요!</h1>
					<h3 class="to-animate">좋아요를 보낼 때 한 개의 하트가 소진되며,</h3>
					<h3 class="to-animate">매일 9시에 하트 한 개가 충전돼요!</h3>
					<h3 class="to-animate">이성에게 좋아요를 보내면 다음 날 추천부터 이상형과의 유사도가 나와요!</h3>
					<h1 class="to-animate">똑같은 타입에게 좋아요를 보낼 시 </h1>
					<h1 class="to-animate">매칭에 성공할 확률이 <a href="http://192.168.0.4:9000/static//assets/html/타입 일치 시 매칭 성공률 분석.html">30%</a> 높아져요!</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			

			
			<c:forEach items="${idealRecommendation}" var="idealRecommendation">
				<div class="col-md-4">
					
						<c:choose>
						<c:when test="${idealRecommendation.recommendtype eq 1}">
						<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%); border:white; border-radius: 5px;">
						 <h2>나와 똑같은 타입</h2>
						 
						 </c:when>
						<c:when test="${idealRecommendation.recommendtype eq 0}">
						<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						 <h2>나의 이상형</h2>
						 </c:when>
						
						</c:choose>
						<img src="resources/character/${idealRecommendation.clientDetailInfo.character}.JPG" style="height:300px; width: 100%; border-radius: 10px;">
						<div class="cnt">
						<br><h2>${idealRecommendation.clientDetailInfo.nickname},${idealRecommendation.clientDetailInfo.age}세</h2>
						<c:choose>
						<c:when test="${idealRecommendation.similarity ne 0}">	
						<h2>이상형과의 유사도: ${idealRecommendation.similarity}%</h2>	
						 </c:when>
						 </c:choose>
						
						<input class="btn btn-primary btn-lg" value="더 알아보기" type="button" onclick="location.href = 'Client_2_Ting_like?clientIdx=${idealRecommendation.clientDetailInfo.clientIdx }'"></div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		</section>
