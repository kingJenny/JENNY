<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <header style="background-image: linear-gradient(-225deg, #C55ADF 0%, #620978 100%);">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" ><span style="color:black;font-family: 'Jua', sans-serif;">ting</span></a> 
		       </div>
		        <div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="Client_2_Ting_main"><span style="color:#F5DBFC;font-family: 'Jua', sans-serif;">오늘의 추천</span></a></li>
						<li><a href="Tingtoday_0_main"><span style="color:#F5DBFC;font-family: 'Jua', sans-serif;">팅투데이</span></a></li>
						<li><a href="Premium_0_main"><span style="color:#F5DBFC;font-family: 'Jua', sans-serif;">프리미엄</span></a></li>
						<li><a href="Fun_0_main"><span style="color:#F5DBFC;font-family: 'Jua', sans-serif;">FUN</span></a></li>
						<li><a href="Client_6_question"><span style="color:#F5DBFC;font-family: 'Jua', sans-serif;">문의</span></a></li>
		
						 <c:choose>
							<c:when test="${sessionScope.UID eq null}">
							<li><button class="ui purple button" id="login">로그인</button></li>
							<li><button class="ui purple button" id="register">회원가입</button></li>
							</c:when>
							
							<c:otherwise>
							<li><a  style="color:#F5DBFC;font-family: 'Jua', sans-serif;">★${sessionScope.nickname}님★</a></li>
							<li><button class="ui purple button" id="logout">로그아웃</button></li>
							<li><button class="ui purple button" id="go_mypage">마이페이지</button></li>
							</c:otherwise>
						</c:choose>
					</ul>
		        </div>
		    </div>
	</header>