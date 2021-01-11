
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://assets.moredates.com/theme/moredates/styles.min.css?v=1606817545" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" ></script>

   
   <div style="margin:0 auto ;width: 1100px">
         <div id="mainContainer" class="container">
            <div class="twoColumn">
               <section class="mainCol">
               <br><br>
               
            <div class="infoCenter"> 
               <h1>마이페이지</h1><br>
               <ul class="notifications count-3">

               <li class="primary" >
               <a class="notification" href="Client_2_Ting_main" style="background:#F7DDDD;"><br><i class="fas fa-heart fa-stack-2x" style="text-shadow: 3px 3px 3px #ED7B9F;"></i>
                     <span class="inner"><br><span class="count"></span>
                     <br><h2 style="color:#E73A71">오늘의 추천</h2></span></a></li>

               <li class="primary">
               <a class="notification" href="no/Chatting_test" style="background:#F7DDDD;" ><br><i class="icon-chat" style="text-shadow: 3px 3px 3px #ED7B9F;"></i>
                     <span class="inner"><br><span class="count"></span>
                     <br><h2 style="color:#E73A71">나의 채팅</h2></span></a></li>

               <li class="primary">
               <a class="notification" href="Client_5_like_Received"  style="background:#F7DDDD;"><br><i class="fas fa-thumbs-up fa-stack-2x" style="text-shadow: 3px 3px 3px #ED7B9F;"></i>
                     <span class="inner"><br><span class="count">${likeReceive}</span>
                     <br><h2 style="color:#E73A71">받은 좋아요 ♥${getlike}</h2></span></a></li>

                  
               </ul>
            </div>
         
                  <section class="profilePage">
                     
                     <div class="box profileHeader">
                        <article class="profileInfo">
                           <a class="imgWrp" target="_blank" style="background-color: #D8D8D8 ">
                           <img src="resources/upload/${myDetailInfo.photo}" alt=""></a>
                           <div class="intro">
                              <h1>닉네임 : ${myDetailInfo.nickname}</h1><br>
                        
                              <div class="form whiteForm aboutMe">
                                 <h3>자기 소개</h3><br>
                                 <p class="">${myDetailInfo.selfIntro}</p>
                              </div>
                           </div>
                        </article>
                        <nav class="profileMenu">
                           <a id=""  class="font" href="Client_1_info_update" style="background:#F7DDDD;"><i class="icon-favoriteOutline" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">프로필 수정하기</span></a>
                          
                           <a id=""  class="font" href="Client_1_info_updateCharming" style="background:#F7DDDD;"><i class="icon-kiss" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">나의 매력포인트</span></a>
                           <a id=""  class="font" href="Client_1_info_updateInterest" style="background:#F7DDDD;"><i class="icon-kiss" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">나의 관심사</span></a>

                           <a id=""  class="font" href="Client_5_like_Sent" style="background:#F7DDDD;"><i class="icon-kiss" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">내가 보낸 좋아요</span></a>
                           <a id=""  class="font" href="PaymentList" style="background:#F7DDDD;"><i class="icon-gift" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">결제 내역</span></a>
                           <a id=""  class="font" href="selectQnAList" style="background:#F7DDDD;"><i class="icon-gift" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">문의 내역</span></a>
                        <!--    <a id=""  class="font" href="Client_1_ask_list.html" style="background:#F7DDDD;"><i class="icon-block" style="text-shadow: 3px 3px 3px #ED7B9F;"> </i><span style="color:#E73A71">문의 및 신고</span></a> -->
                        </nav>

                     </div>
                     <div class="box profileFacts">
                        <h3>상세프로필</h3><br>
                        <div class="facts">
                           <div class="group">
                              <span class="font">학력</span><p><span class="dd">${myDetailInfo.education}</span></p>
                           </div>
                           <div class="group">
                              <span class="font">체형</span><p><span class="dd">${myDetailInfo.bodyShape}</span></p>
                           </div>
                           <div class="group">
                              <span class="font">키</span><p><span class="dd">${myDetailInfo.height}cm</span></p>
                           </div>
                           <div class="group">
                              <span class="font">성별</span><p><span class="dd">${myDetailInfo.gender}</span></p>
                           </div>
                           <div class="group">
                              <span class="font">흡연</span><p><span class="dd">${myDetailInfo.smoke}</span></p>
                           </div>
                           <div class="group">
                              <span class="font">음주</span><p><span class="dd">${myDetailInfo.drink}</span></p>
                           </div>
                           <div class="group">
                              <span class="font">종교</span><p><span class="dd">${myDetailInfo.religion}</span></p>
                           </div>
							<c:choose>
								<c:when test="${myMbtiExplanation.mbtiName ne null}">
									<div class="group">
										<span class="font">MBTI</span>
										<p>
											<span class="dd">${myMbtiExplanation.mbtiName}</span>
										</p>
									</div>

								</c:when>
							</c:choose>


						</div>
                     </div>
                     
                    <div class="box profileFacts" style="background: #F9E2E9;">
						<h1>당신의 캐릭터는?</h1>
						<br>
						<div class="left" style="width: 50%; float: left; box-sizing: border-box; padding: 10px 50px; text-align:center" >
							<h2>${myDetailInfo.charactervo.character_Name}</h2>
							<img src="resources/character/${myDetailInfo.charactervo.character_Photo}" style="height:300px; width: 100%; border-radius: 10px;">
						</div>
						<div class="right" style="width: 50%; float: right; box-sizing: border-box; padding: 100px 50px; text-align:center">
							<h1>당신의 캐릭터는....</h1><br>
							<h3>${myDetailInfo.charactervo.character_Explanation}</h3>
						</div>
					</div>
					

					<div class="box profileFacts analysis" style="background: #F9E2E9;">
                  <h1>${myDetailInfo.nickname}님의 성격을 분석해보았어요!</h1>
                  <br>
                  <div class="facts">
                     <div id="canvas-holder" style="width: 100%">
                        <div class="left" style="width: 50%; float: left; box-sizing: border-box; " >
                        <canvas id="mychar"></canvas>
                        </div>
                        <div class="right" style="width: 50%; float: right; box-sizing: border-box; " >
                        <canvas id="mychar1"></canvas>
                        </div>
                     </div>
                  </div>
               </div>
					
					
                     </div>
                     
				</section>
               </section>
            </div>
         </div>

   <script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
    <script>
   var cid=${sessionScope.clientIdx};
   var list={"clientIdx":cid};
   var mylist=[];
   var mylist1=[];
   var mylist2=[];

   var cnt = 0;
   $.ajax({ 
	      async: false,
		url :'no/selectmychar', 
		type : 'post', 
		contentType: 'application/json; charset=UTF-8',
		dataType : 'json', 					
		data: JSON.stringify(list),
		success: function(data){
			console.log(cnt++)
			
			$.each(data, function(key, data){
				
				mylist.push(parseInt(data.romantist)*10);
				mylist.push(parseInt(data.homebody)*10);
				mylist.push(parseInt(data.planned)*10);
				mylist.push(parseInt(data.impromptu)*10);
				mylist.push(parseInt(data.outgoing)*10);
				
				mylist1.push(parseInt(data.passive)*10);
				mylist1.push(parseInt(data.leading)*10);
				mylist1.push(parseInt(data.sensitive)*10);
				mylist1.push(parseInt(data.rational)*10);
				mylist1.push(parseInt(data.consider)*10);
				
				mylist2.push(parseInt(data.detailed)*10);
				mylist2.push(parseInt(data.sympathy)*10);
				mylist2.push(parseInt(data.contact_high)*10);
				mylist2.push(parseInt(data.contact_low)*10);
				mylist2.push(parseInt(data.sense)*10);
				
		
			});
			if(mylist.length==0){$('.analysis').hide();}
		},
	      error : function(){
	          $('.analysis').hide();
	       }
		
	});
   
   console.log(mylist);
	console.log(mylist1);
	console.log(mylist2);
		
   
   var loc= $('#mychar');
   var loc1= $('#mychar1');
   var loc2= $('#mychar2');
   
  var data = {
		    datasets: [{
		    	data: mylist
		    }],
		    
		    labels: [
		        '사랑꾼',
		        '집콕러',
		        '계획적',
		        '즉흥적',
		        '외향적'
		       
		    ]
		};
    
   
   var mychar= new Chart(loc, {
	    data: data,
	    type: 'polarArea',
	    options:  {
			responsive: true,
			legend: {
				position: 'right',
			},
			title: {
				display: true,
				//text: 'Chart.js Polar Area Chart'
			},
			scale: {
				ticks: {
					beginAtZero: true
				},
				reverse: false
			},
			animation: {
				animateRotate: false,
				animateScale: true
			}
		}
	});
 
   
    var data1 = {
		    datasets: [{data: mylist1}],
		    
		    labels: [
		        '능동적',
		        '수동적',
		        '주도적',
		        '감성적',
		        '이성적'
		       
		    ]
		};
   
  
  var mychar1= new Chart(loc1, {
	    data: data1,
	    type: 'polarArea',
	    options:  {
			responsive: true,
			legend: {
				position: 'right',
			},
			title: {
				display: true,
				//text: 'Chart.js Polar Area Chart'
			},
			scale: {
				ticks: {
					beginAtZero: true
				},
				reverse: false
			},
			animation: {
				animateRotate: false,
				animateScale: true
			}
		}
	});
  
  var data2 = {
		    datasets: [{data: mylist2}],
		    
		    labels: [
		        '배려심',
		        '꼼꼼함',
		        '연락중요도',
		        '독립성',
		        '센스'
		       
		    ]
		};
  
 
 var mychar2= new Chart(loc2, {
	    data: data2,
	    type: 'polarArea',
	    options:  {
			responsive: true,
			legend: {
				position: 'right',
			},
			title: {
				display: true,
				//text: 'Chart.js Polar Area Chart'
			},
			scale: {
				ticks: {
					beginAtZero: true
				},
				reverse: false
			},
			animation: {
				animateRotate: false,
				animateScale: true
			}
		}
	});


    
   
  
   

    </script>