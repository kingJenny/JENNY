<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<style>
	a {
		font-family: 'Jua', sans-serif
	}
	
	.pagination>li>a {
		height: 50px;
		padding-top: 15px;
		width: 45px;
	}

	.TingToday_list {
		text-align: left;
	}
	
	.list_start {
		text-align: center;
	}
	
	.list_detail {
		display: inline-block;
	}
	
	h3 { 
		margin-bottom:-100px;
	}
	</style>

<!---------------------------------- header end ---------------------------------->
<!--여기에 내용 넣으세요-->

<div id="mainContainer" class="container">
	<div class="twoColumn">
		<section class="mainCol">
			<br>
			<br>
			<!-- 나의 프리미엄 -->
			<div class="infoCenter">
				<!--  
               <h1>인기글 tingToday TOP</h1><br>
               <ul class="notifications count-3">

               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥김♥수♥환</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥수♥환♥쌤</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>

               </ul>-->
			</div>

			<!----------------------------------------------------------------------------------------->
			<br>
			<br>
			<!--게시판 해더-->
			<header>
			
				<h1 align="center">TingToday 이모저모 📊<h1>
			</header>
			<!--게시판 해더-->
			<br>
			<br>
			<!--게시판 테이블-->
			<div class="TingToday_list">
				<div class="list_start">
						<div class="list">
							<h3 align="center">팅투데이 인기키워드<h3>
							<a href="http://192.168.0.4:9000/static//assets/html/4.wordcnt 생성.html">
							<img src="http://192.168.0.4:9000/static//assets/images/wordcnt/wordcntTest.png"
								style="width: 600px; height: 500px; margin: 80px;"></a>
						</div>
						
						<h2 align="center">TingToday 인기게시물 Top3 📸<h2>
						
						<c:forEach items="${boardList}" var="board">
							<div class="list_detail">
								<a><img src="resources/upload/${board.fname}"
									style="width: 300px; height: 300px; margin: 10px;"></a>
								<h4 align="center">제목 : ${board.title}<h4>
								<h4 align="center">작성자 : ${board.nickName}<h4>
							</div>
						
						</c:forEach>
						
						
<!-- 						<div class="list_detail"> -->
<!-- 							<a><img src="resources/upload/couple2.jpg" -->
<!-- 								style="width: 300px; height: 300px; margin: 10px;"></a> -->
<%-- 							<h4 align="center">작성자 : ${board.nickName}<h4> --%>
<!-- 						</div> -->
						
<!-- 						<div class="list_detail"> -->
<!-- 							<a><img src="resources/upload/couple2.jpg" -->
<!-- 								style="width: 300px; height: 300px; margin: 10px;"></a> -->
<%-- 							<h4 align="center">작성자 : ${board.nickName}<h4> --%>
<!-- 						</div> -->
				</div>
				<br><br>
				

<%-- 		<form method="post" action="Tingtoday_0_main"  style="right:-65%; position: relative;">
								<input type="hidden" name="page" value="${param.page}">
								<select name="searchType">
									<option value="">검색</option>
									<option value="1">닉네임</option>
									<option value="2">내용</option>
<!-- 									<option value="3">내용</option> -->
								</select>&nbsp; <input name="searchValue"> 
								<input type="submit" value="Search">
							</form> --%>

				<!--페이지-->
				<br>
<%-- 				<div class="page_num1" align="center" style="padding: 3px;">
					<div id="pageTd">
						page 처리 
						<%@include file="pageProcess.jsp"%>
					</div>
				</div> --%>
				<!--페이지-->


<%-- 				<c:if test="${sessionScope.clientIdx ne null}">
				<button class="ui teal button" style="right:-84%;  position: relative;" onclick="location.href='Tingtoday_0_write'">글쓰기</button>
				</c:if> --%>
			</div>
	</div>
</div>




<br>
<br>
<br>
<br>

<!---------------------------------- Footer start ---------------------------------->

