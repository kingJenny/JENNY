<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html class="no-js">
   <head>

	   <title>기본폼	</title>

		   <meta http-equiv="X-UA-Compatible" content="IE=edge">
		   <meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
		   <meta name="viewport" content="width=device-width, initial-scale=1">

		   <link rel="stylesheet" href="resources/css/animate.css">
		   <link rel="stylesheet" href="resources/css/simple-line-icons.css">
		   <link rel="stylesheet" href="resources/css/magnific-popup.css">
		   <link rel="stylesheet" href="resources/css/bootstrap.css">
		   <link rel="stylesheet" href="resources/css/style.css">
		   <link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">

		   <script src="resources/js/modernizr-2.6.2.min.js"></script>
		   <script
			 src="https://code.jquery.com/jquery-3.1.1.min.js"
			 integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			 crossorigin="anonymous"></script>
		   <script src="resources/js/semantic.min.js"></script>
<!-- Client_4_detailInsert1.do -->
<!-- 파일업로드 -->
<script src="resources/js/file.upload.js"></script>
<link rel="stylesheet" href="resources/css/file.upload.css">
<!-- 파일업로드 end -->
	<style>
		textarea {
			width: 100%;
			height: 200px;
			padding: 10px;
			box-sizing: border-box;
			border: solid 2px ;
			border-radius: 5px;
			font-size: 16px;
			resize: both;
		}
	</style>
   </head>



<section id="fh5co-testimonials" data-section="testimonials">

   
   <div class="row"  style="border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		<div class="col-md-12 section-heading text-center">
			<h2>Q1</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 이름은?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red name" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value=""><br>
			<button class="ui inverted red button nameclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>
   <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		<div class="col-md-12 section-heading text-center">
			<h2>Q2</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			  <h1>당신의 닉네임을 정해주세요</h1>
      </div>
      <div class="options__ouvgd text-center">
         <input type="text" class="ui inverted red nickname"  style="width:200px; height: 50px; font-size:20px; margin-bottom: 20px;" value=""> 
					<button class="compact ui button" style="float: center; margin: 3px" type="button" id="nickChk" onclick="fn_nickChk();" value="N">중복확인</button>
					<div class="check_font" id="nick_check"></div><br>
         <button class="ui inverted red button nicknameclick detailinfo" style="width:100px; font-size:20px;">다음</button>
      </div>
   </div>  
  <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
      <div class="col-md-12 section-heading text-center">
         <h2>Q3</h2>
      </div>
      <div class="col-md-05 section-heading text-center">
		   <h1>당신의 성별은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button gender detailinfo" style="width:400px; font-size:20px;" value="남성">남성</button><br>
		   <button class="ui inverted red button gender detailinfo" style="width:400px; font-size:20px;" value="여성">여성</button> 
	   </div>
   </div>  

 <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		 <div class="col-md-12 section-heading text-center" style="padding-top: 50px">
		 
			<font size="50px">Q4</font>
		</div>
			<p><h1 style="text-align: center;">당신의 직업은?</h1></p><br>
		<div class="options__ouvgd text-center">
			<button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="주부">주부</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="교사">교사</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="무직">무직</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="학생">학생</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="직장인">직장인</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="영업직">영업직</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="설비직">설비직</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="전문직">전문직</button><br>
		   <button class="ui inverted red button job detailinfo" style="width:400px; font-size:20px;" value="기타">기타</button><br>
		</div>
						<!-- 	<div class="filebox bs3-primary preview-image">
								<input class="upload-name" value="파일선택" disabled="disabled"
									style="width: 200px;"> <label for="input_file" style="margin: 0 auto;">업로드</label>
								<input type="file" id="input_file" class="upload-hidden">
							</div> -->
		
   </div> 
	
	<div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		<div class="col-md-12 section-heading text-center" style="padding-top: 50px">
			<font size="50px">Q5</font>
		</div>
		<p><h1 style="text-align: center;">당신의 나이는?</h1></p><br>
		<div class="options__ouvgd text-center">
			<div>
								<div>
					<select id="" name="" class="age"
						style="width: 100px; height: 30px; font-size: 20px; text-align: center;">
						<option value="16">16살</option>
						<%
							for (int i = 15; i <= 100; i++) {
						%>
						<option value="<%=i%>"><%=i + "살"%></option>
						<%} %>
					</select>
				</div>
							</div><br>
			<button class="ui inverted red button ageclick detailinfo" style="width:100px; font-size:20px;margin: 0 auto;">다음</button>
		</div>
	</div>

	
   
   <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		<div class="col-md-12 section-heading text-center">
			<h2>Q6</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 종교는?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="무교">무교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="기독교">기독교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="천주교">천주교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="불교">불교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="그외">그외</button><br>
		</div>
	</div>

  <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q7</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 학력은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		<button class="ui inverted red button education detailinfo" style="width:400px;  font-size:20px;" value="고등학교">고등학교</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="전문대">전문대</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="대학교">대학교</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="석사">석사</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="박사">박사</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="기타">기타</button>
	   </div>
   </div>
   
	<div class="row" style="display: none;   border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
		<div class="col-md-12 section-heading text-center" style="padding-top: 50px">
			<font size="50px">Q8</font>
		</div>
		<p><h1 style="text-align: center;">당신의 키는?</h1></p><br>
		<div class="options__ouvgd text-center">
			<div>
				<select id="" name="" class="height"
					style="width: 100px; height: 30px; font-size: 20px; text-align: center;">
					<option value="100">100cm</option>
					<%
						for (int i = 101; i <= 200; i++) {
					%>
					<option value="<%=i%>"><%=i + "cm"%></option>
					<%} %>
				</select>
			</div><br>
			<button class="ui inverted red button heightclick detailinfo" style="width:100px; font-size:20px;margin: 0 auto;">다음</button>
		</div>
	</div>   
   
   
   <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q9</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 체형은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="마른">마른</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="슬림">슬림</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="보통">보통</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="다소 볼륨">다소 볼륨</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="다소 근육">다소 근육</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="글래머">글래머</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="근육질">근육질</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="통통">통통</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="우람">우람</button><br>
   </div>
   </div>

   <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q10</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 주량은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="안 마심">안 마심</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="1병 이하">1병 이하</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="1병 - 2병">1병 - 2병</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="2병 초과">2병 초과</button><br>
	   </div>
   </div>

    <div class="row" style=" display: none;  border-radius: 1em;border:2px solid  #E6E6E6; width:600px; height:auto; margin: 0 auto; padding-bottom: 50px;">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q11</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 흡연습관은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="비흡연"">비흡연</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="가끔">가끔</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="종종">종종</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="매일">매일</button><br>
	   </div>
   </div>
   
  <div class="row" style=" display: none; ">
		<div class="col-md-12 section-heading text-center">
			<h2>Q12</h2>
		</div>
		<div class="col-md-offset-1 col-md-5 text-center">
			<h1>당신에 대해 자세히 알고 싶어요!</h1>
			<br>
			<h3>당신에 대해 구체적으로 말해주세요</h3>

				<textarea class="autosize selfIntro" rows="1"
					placeholder=" 자기소개를 써주세요"
				></textarea>
				<button class="ui inverted red button selfIntroclick detailinfo"
					style="width: 100px; font-size: 20px;">다음</button>
				<br>
				<br>
			


		</div>

		<div class="col-md-4 text-center" >
				<h3>자기 소개를 통해 당신의 캐릭터를 찾아드릴게요!</h3>
				<div class="mycharacter">
					
				</div>
				<div class="options__ouvgd text-center">
					<button class="ui inverted red button check" style="width:150px; font-size:20px;">확인하기</button>
				</div>
			</div>

		
	</div> 
   

   
   
	   
   <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>프로필 작성을 완료하셨습니다</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		<form method="POST" action="insertClientDetailInfo">
			<input type="hidden" name="name" id="name" value="">
			<input type="hidden" name="nickname" id="nickname" value="">
			<input type="hidden" name="gender" id="gender" value="">
			<input type="hidden" name="job" id="job" value="">
			<input type="hidden" name="age" id="age" value="">
			<input type="hidden" name="salary" id="salary" value="">
			<input type="hidden" name="residence" id="residence" value="">
			<input type="hidden" name="religion" id="religion" value="">
			<input type="hidden" name="education" id="education" value="">
			<input type="hidden" name="height" id="height" value="">
			<input type="hidden" name="bodyShape" id="bodyShape" value="">
			<input type="hidden" name="drink" id="drink" value="">
			<input type="hidden" name="smoke" id="smoke" value="">
			<input type="hidden" name="latitude" id="latitude" value="0">
			<input type="hidden" name="longitude" id="longitude" value="0">
			<input type="hidden" name="selfIntro" id="selfIntro" value="">
			<input type="hidden" name="character" id="character" value="">
			<button class="btn btn-primary" type="submit" >저장</button>
	   </form>
	   </div>
   </div>

   
   

   
   <script>
   $(document).ready(function() {
	   $(".detailinfo").click(function() {
		   $(this).parent().parent().hide().next().show();
	   });
	   
	   $(".check").click(function() {
		   $(".mycharacter").html("");

				  
		   $.ajax({
				type : 'GET',
				url : 'http://192.168.0.11:9000/adminPage/classification?callback',
		        dataType:'jsonp',
		        jsonp: 'callback',
				data : {'selfIntro' : $('.selfIntro').val()},
				contentType : 'application/x-www-form-urlencoded;charset = UTF-8',
				success : function(jsonData){
					//alert(jsonData["character_name"])
					//alert(jsonData["character_explanation"])
					//alert(jsonData["character_photo"])
					//저는 강아지 좋아해요. 사랑스러운 강아지와 같이 놀아주실 분 구해요
					//저는 이벤트 하는 거 좋아하구요. 남자친구에게 많은 사랑 줄 준비 돼있어요!
					$(".mycharacter").append("<img src='resources/character/"+jsonData['character_photo']+"' width='250'>")
					$(".mycharacter").append("<br><h1>"+jsonData["character_name"]+"</h1>")
					$(".mycharacter").append("<h3>"+jsonData["character_explanation"]+"</h3>")
					$(".mycharacter").append("<h2> 당신에게 어울리는 타입을 만나보아요</h2>")
					$('#character').val(jsonData["character_type"]);
				},
				error : function(){
					$(".mycharacter").append("<img src='resources/character/naturalmeet.JPG' width='250'>")
					$(".mycharacter").append("<br><h1>자만추 늑대형</h1>")
					$(".mycharacter").append("<h3>운명적인 만남이 있다고 믿는 자만추형 늑대에요.<br> 소개팅은 싫다면서 시크하게 반응하지만 <br>외롭다는 말을 입에 달고 사는 겉바속촉 스타일.<br> 연인과의 자연스러운 만남으로 소소한 행복이 이어지길 바래요.</h3>")
					$(".mycharacter").append("<h2> 당신에게 어울리는 타입을 만나보아요</h2>")
					$('#character').val('naturalmeet');
				}
			})
	   });
	   
	   
	   
	// Geolocation API에 액세스할 수 있는지를 확인
	   if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {
                $('#latitude').val(pos.coords.latitude);     // 위도
                $('#longitude').val(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
   });
   </script>
   <script type="text/javascript">
	$('.nameclick').click(function() {
		$('#name').val($('.name').val());
	});
	$('.nicknameclick').click(function() {
		$('#nickname').val($('.nickname').val());
	});
	
	$('.gender').click(function() {
		$('#gender').val($(this).val());
	});
	$('.job').click(function() {
		$('#job').val($('.job').val());
	});
	$('.ageclick').click(function() {
		$('#age').val($('.age').val());
	});
	$('.salary').click(function() {
		$('#salary').val($(this).val());
	});
	$('.religion').click(function() {
		$('#religion').val($(this).val());
	});
	$('.education').click(function() {
		$('#education').val($(this).val());
	});
	$('.heightclick').click(function() {
		$('#height').val($('.height').val());
	});
	$('.bodyShape').click(function() {
		$('#bodyShape').val($(this).val());
	});
	$('.drink').click(function() {
		$('#drink').val($(this).val());
	});
	$('.smoke').click(function() {
		$('#smoke').val($(this).val());
	});
	$('.selfIntroclick').click(function() {
		$('#selfIntro').val($('.selfIntro').val());
	});
	
	</script>
	<script>
function fn_nickChk(){
	$.ajax({
		url : "nickChk",
		type : "post",
		dataType : "json", 
		data : {"nickname" : $(".nickname").val()},
		success : function(data){
			if(data == 1){
				$("#nick_check").text("사용중인 닉네임입니다.");
				$("#nick_check").css("color", "red");
			}else if(data == 0){
				$("#nickChk").attr("value", "Y");
				$("#nick_check").text("사용가능한 닉네임입니다.");
				$("#nick_check").css("color", "blue");
			}
		}
	})
}
</script>

</section>



