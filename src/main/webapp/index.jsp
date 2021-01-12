<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
 <html class="no-js">
	<head>
		<title>JENNY</title>
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="resources/css/animate.css">
			<link rel="stylesheet" href="resources/css/simple-line-icons.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/style.css">
			<link rel="stylesheet" href="resources/css/semantic.min.css">
			<script src="resources/js/modernizr-2.6.2.min.js"></script>
			<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
			<script src="resources/js/semantic.min.js"></script>	
	</head>
	<body>
	
	<!-- jenny header start -->
	<header role="banner" id="fh5co-header" >
			<div class="container">
			    <nav class="navbar navbar-default">
		        <div class="navbar-header">
				<a href="index.jsp" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		         <a class="navbar-brand" href="index.jsp">Jenny</a> 
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="index.jsp" data-nav-section="about"><span>Jenny란?</span></a></li>
						<li><a href="Main_company_1_team" data-nav-section="team"><span>이용방법</span></a></li>
						<li><a href="Tingtoday_0_main" data-nav-section="tingtoday"><span>JennyToday!</span></a></li>
						<li><a href="Premium_0_main" data-nav-section="premium"><span>프리미엄</span></a></li>
						<li><a href="Fun_0_main" data-nav-section="fun"><span>FUN</span></a></li>
						<li><a href="" data-nav-section="contact"><span>문의</span></a></li>
						 <c:choose>
						 
							<c:when test="${sessionScope.UID eq null}">
							<li><button class="ui purple button" id="login">로그인</button></li>
							<li><button class="ui purple button" id="register">회원가입</button></li>
							</c:when>
							
							<c:otherwise>
							<li><button class="ui purple button" id="logout">로그아웃</button></li>
							<li><button class="ui purple button" id="go_mypage">마이페이지</button></li>
							</c:otherwise>
						</c:choose>
						
					</ul>
				</div>
			    </nav>
		  </div>
	</header>
	<!-- jenny header end -->
	
	<!-- jenny main start -->
	<section id="fh5co-home" data-section="about" style="background-image: url(resources/images/main_img.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2" >
							<h1 class="to-animate"  >내 인생 친구가 바로 쟤니? </h1>
							<h2 class="to-animate">지금 바로 Jenny 하자</h2><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>
	<section id="fh5co-intro">
		<div class="container">
			<div class="row row-bottom-padded-lg">
				<div class="fh5co-block to-animate" style="background-image: url(resources/images/clock22.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-speedometer"></i>
						<h2>쟤니타임 2시20분!</h2>
						<p>인생 친구가 매일 추천된다면?<p>내가 바라는 친구가<p> 랜덤으로 찾아와요!</p>
						<p><a href="Main_login_0" class="btn btn-primary">go Jenny !</a></p>
					</div>
				</div>

				<div class="fh5co-block to-animate" style="background-image: url(resources/images/secret.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-shield"></i>
						<h2>소중한 내정보!</h2>
						<p>Jenny은 쟤니들의 소중한 개인정보를<p>아무에게나 함부로 보여주지 않아요!<p>내가 선택한 사람에게만 보여줘요!</p>
						<p><a href="Main_login_0" class="btn btn-primary">go Jenny !</a></p>
					</div>
				</div>


				<div class="fh5co-block to-animate" style="background-image: url(resources/images/fr1.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-heart"></i>
						<h2>Jenny만 믿어요</h2>
						<p>Jenny만의 알고리즘을 통해 가장 잘맞는 친구를 매칭해주고 있어요.<p>같이 재밌게 늙어갈 수 있는 나만의 인생친구를 Jenny에서 선택만 하면 돼요.</p>
						<p><a href="Main_login_0 " class="btn btn-primary">go Jenny !</a></p>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- jenny main end -->
	
	<!-- jenny count start -->
	<section id="fh5co-counters" style="background-image: url(resources/images/background2.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center to-animate">
					<h2>Jenny NOW</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="7" data-speed="5000" data-refresh-interval="50">7</span><br><br>
						<span class="fh5co-counter-label">Jenny탄생</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
					<span class="fh5co-counter-number js-counter" data-from="0" data-to="16055" data-speed="5000" data-refresh-interval="50">16055</span><br><br>
						<span class="fh5co-counter-label">가입한Jenny</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="1302" data-speed="5000" data-refresh-interval="50">1302</span><br><br>
						<span class="fh5co-counter-label">매칭성공!</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="fh5co-counter to-animate">
						<span class="fh5co-counter-number js-counter" data-from="0" data-to="15001" data-speed="5000" data-refresh-interval="50">15001</span><br><br>
						<span class="fh5co-counter-label">프리미엄회원</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- jenny count end -->

	<!-- jenny manual start -->
	<section id="fh5co-work" data-section="team">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate"> Jenny 이용 방법! </h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>간단하게 Jenny 이용 방법을 설명할게요.</h3>
						</div>
					</div>
				</div>
			</div>

			<div class="row row-bottom-padded-sm">

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>1. 회원가입  </h2>
						<span>간단한 이메일 가입!</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy2.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy2.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>2. 매칭을 위한 정보입력 </h2>
						<span>나와 원하는 친구타입을 알려주세요!</span>
						</div>
					</a>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>3. 매일 오후 2시 20분 추천 완료! </h2>
						<span>서로 좋아요를 누른다면 대화가 열려요!</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy4.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy4.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>★ 내 정보가 상대에게 공개되나요? </h2>
						<span>걱정마세요! 나이, 취미, 자기소개만 공개됩니다!<p>다른 취향은 매칭이 성사되면 서로에게만 공개!</span>
						</div>
					</a>
				</div>
				
				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy2.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy2.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>★ 매칭됐지만 잘 맞지 않아요 ㅠ.ㅠ </h2>
						<span>걱정마세요! 대화창을 나간다면 연결고리는 사라져요!<p>대신 우리는 Jenny니까 인사하고나가는 센스!</span>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xxs-12">
					<a href="images/myboy1.jpg" class="fh5co-project-item image-popup to-animate">
						<img src="resources/images/myboy1.jpg" alt="Image" class="img-responsive">
						<div class="fh5co-text">
						<h2>★ 대화 매너가 너무 없으면 어떡하죠? </h2>
						<span>Jenny들은 그러지 않을 것이라 굳게 믿지만..<p>신고 기능이 있어요. 검토 후 블랙리스트 처리합니다!</span>
						</div>
					</a>
				</div>
				
			<div class="row">
				<div class="col-md-12 text-center to-animate">
					<p><a href="Client_6_question" ><h2>더 자세히 알고싶으시다면 !<h2></a></p>
				</div>
			</div>
		</div>
	</section>
	<!-- jenny manual end -->

	<!-- jenny Today start -->
	<section id="fh5co-testimonials" data-section="tingtoday">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<!--  -->
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h2 class="to-animate" style="color:#8d08ae">제티하자 ! Jenny TODAY!</h2><p>
							<h3 style="color:#D877F1"> Jenny들과 소소한 하루를 나눠보아요!</h3>
							<button class="ui inverted purple button" id="go_tingtoday">now Jenny TODAY!</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2" style="background:">
							<p>&ldquo;연테 결과 같이 공유해요~!&rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy3.jpg" alt="Person"></figure>
							<p>
							yeeun  <span class="subtext">ENTP</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2">
							<p>&ldquo; 제 21년 새해 계획이네요~! &rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy.jpg" alt="Person"></figure>
							<p>
							JENNY <span class="subtext">ESTP</span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="box-testimony">
						<blockquote class="to-animate-2">
							<p>&ldquo; 테니스 배워보신 분 있나용? &rdquo;</p>
						</blockquote>
						<div class="author to-animate">
							<figure><img src="resources/images/yy2.jpg" alt="Person"></figure>
							<p>
							hoony  <span class="subtext">INFJ</span>
							</p>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</section>
	<!-- jenny Today end -->
	
	<!-- jenny premium start -->
	<section id="fh5co-work" data-section="premium">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">Premium</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h1 style="color:#F8EFFA">매일 주어지는 선택권(★)은 단 한 장!<p>star로 원하는만큼 친구를 고를 수 있어요!</h1>
							<p><h3><a href="Premium_0_main ">구매하러가기</a></h3></p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/premium.png" alt="Image"></figure>
						<h2>7 일</h2>
						<p>하루 Jenny Card: 6개</p>
						<p>+ 플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="7,000 원" type="button" id="go_premium">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/premium.png" alt="Image"></figure>
						<h2>30 일</h2>
						<p>하루 Jenny Card: 6개</p>
						<p>+ 플러스플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="할인가 2,5000 원" type="button" id="go_premium">
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate">
						<figure><img src="resources/images/premium.png" alt="Image"></figure>
						<h2>365 일</h2>
						<p>하루 Jenny Card: 6개</p>
						<p>+ 왕플러스 혜택</p>
						<input class="btn btn-primary btn-lg go_premium" value="이벤트특가! 99,000원" type="button" id="go_premium">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- jenny premium end -->

	<!-- jenny FUN start -->
		<section id="fh5co-services" data-section="fun">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-left" style="margin:0">
					<h2 class=" left-border to-animate">FUN</h2>
					<div class="row">
						<div class="col-md-8 subtext to-animate" >
							<h3>Jenny만의 컨텐츠! </h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			<ul style="list-style:none;">
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate" >
					<h2> MBTI 테스트</h2>
					<p>요즘은 MBTI가 대세잖아요? 테스트하면 알고리즘에 반영돼요!</p>
					<button class="ui purple button" id="goFUN">go FUN >></button>
					<p><br><br></p>
				</div>
			</li>
			<li>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				
					<h2>우정테스트  </h2>
					<p>내가 원하는 친구타입은? 테스트하면 취향맞는 친구가 추천될 확률 UP!</p>
					<button class="ui purple button" id="goFUN">go FUN >></button>
					<p><br><br></p>
				</div>
			</li>
			</ul>
			</div>
		</div>
	</section>
	<!-- jenny FUN end -->
	
	<!-- 중간 여백 사진 -->
	<section id="fh5co-counters" style="background-image: url(resources/images/background2.jpg);" data-stellar-background-ratio="0.5">
		<div class="fh5co-overlay"></div>
	</section>
	
	<!-- jenny contact start -->
	<section id="fh5co-contact" data-section="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">궁금하신 부분이 있나요?</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>언제나 Jenny에게 문의해주세요!</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-bottom-padded-md">
				<div class="col-md-6 to-animate">
					<h3>Jenny Info</h3>
					<ul class="fh5co-contact-info"> 
						<li class="fh5co-contact-address " style="color:#8D08AE">
							<i class="icon-home" ></i>
							부천시 소사구 심곡본동
						</li>
						<li style="color:#8D08AE"><i class="icon-phone"></i> 010 - 4243 - 1338 </li>
						<li style="color:#8D08AE"><i class="icon-envelope"></i>jennymaster2020@gmail.com</li>
					</ul>
				</div>
				<div class="col-md-6 to-animate" >
					<h3 >문의</h3>
					<div class="form-group " >
						<label for="name" class="sr-only">Name</label>
						<input id="name" class="form-control" placeholder="이름" type="text" >
					</div>
					<div class="form-group ">
						<label for="email" class="sr-only">Email</label>
						<input id="email" class="form-control" placeholder="이메일" type="email" >
					</div>
					<div class="form-group ">
						<label for="phone" class="sr-only">Phone</label>
						<input id="phone" class="form-control" placeholder="핸드폰" type="text" >
					</div>
					<div class="form-group ">
						<label for="message" class="sr-only">Message</label>
						<textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="내용" ></textarea>
					</div>
					<div class="form-group ">
						<input class="btn btn-primary btn-lg" value="문의 보내기" type="submit" id="send_ask" >
					</div>
					<div>
				</div>
			</div>
		</div>
	</section>
		<!-- jenny contact end -->
		
		<!-- main footer start -->	
	<footer id="footer" role="contentinfo">
		<a href="#" class="gotop js-gotop"><i class="icon-arrow-up2">Top</i></a>
		<br><br>
		<div class="container">
			<div class="">
				<div class="col-md-12 text-center">
					<p>&copy; Jenny </p>
				</div>
			</div>
			<br><br>
		</div>
	</footer>
	<!-- main footer end -->	
	
	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<script src="resources/js/main.js"></script>
	
	</body>
</html>

