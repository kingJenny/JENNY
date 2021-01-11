<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
<!--여기에 내용 넣으세요-->
<section id="fh5co-about" >
      <div class="container">
      <div align="center"
               style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto;padding-top: 30px;">
         <div class="row">
            <div class="col-md-4 section-heading text-center to-animate" style="margin: 0 auto;">
               <h2 class="to-animate">♡♥<span style="color:#ED4B4E ">두근두근</span> 너를 보여줘♥♡</h2>
               <font size="6px;"> ${clientDetailInfo.charactervo.character_Name}</font>
                  <h3>
                    ${clientDetailInfo.charactervo.character_Explanation}
                  </h3>
              <%--  <h1 class="to-animate">${myClientDetailInfo.nickname}님은 <span style="color:red;">${heartCnt}</span>개의 하트를 가지고 있어요!</h1> --%>
           
            
            </div>
				<!-- <div style="margin-top: 20px; margin-bottom: 20px;">
					

				</div> -->
			</div>

			<section>
				<div
					style="height: auto; width: 90%; padding: 60px 0px 60px 0px; text-align: left; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
					<div class="row">
						<div class="col-md-5" style="left: 10px;">
							<div class="fh5co-person text-center to-animate"
								style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border: white; border-radius: 5px;">
								<img src="resources/character/${clientDetailInfo.character}.JPG" alt=""
									style="height: 300px; width: 100%;">
								<div class="cnt">
									<h2>${clientDetailInfo.nickname},${clientDetailInfo.age}</h2>
									<span>${clientDetailInfo.selfIntro}</span>
								</div>
								<!-- 나중에 변수로 넣을 것 -->
							</div>
						</div>
						<div class="col-md-15">
							<div class="text-center to-animate">
								<div class="cnt">
									<h2 class="rainbow-text">
										<span><i class="fas fa-people-arrows fa-2x"></i>&nbsp;꿈에
											그리던 이상형이 찾아왔어요&nbsp;<i class="fas fa-heartbeat fa-2x"></i></span>
									</h2>
									<h1 style="color: gray; display: inline;">취향저격 :</h1>
									&nbsp;&nbsp;
									<h1 style="color: red; display: inline;">80%</h1>
									<h2 style="color: #ff5675">당신의 이상형 정보와 일치</h2>
									<br>
									<div style="float: left; text-align: center; margin-left: 50px;">
										<h2 style="color: #ff5675">
											<i class="fas fa-dumbbell fa-1x"></i>&nbsp;체형:&nbsp;${clientDetailInfo.bodyShape}
										</h2>
										<h2 style="color: #ff5675">
											<i class="fas fa-graduation-cap fa-1x"></i>&nbsp;학력:&nbsp;${clientDetailInfo.education}
										</h2>
									</div>
									<div style="float: right; text-align: center; margin-right: 25px;">
										<h2 style="color: #ff5675">
											<i class="fas fa-glass-cheers fa-1x"></i>&nbsp;음주여부:&nbsp;${clientDetailInfo.drink}
										</h2>
										<h2 style="color: #ff5675">
											<i class="fas fa-smoking-ban fa-1x"></i>&nbsp;흡연여부:&nbsp;${clientDetailInfo.smoke}
										</h2>
									</div>

									<div style="margin-top: 130px;">
									<h4>남은 하트 수:${heartCnt}</h4>
										<form method="POST" action="insertLikeReceive"
											id="insertLikeReceive">
											<input type="hidden" name="clientIdx"
												value="${clientDetailInfo.clientIdx}" /> <input
												class="btn btn-lg likesend"
												style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%); color: #464646; top: -200px;"
												value="좋아요 보내기" type="submit">
										</form>
									</div>

								</div>
								
							</div>
						</div>
					</div>
				</div>
			</section>

			<section>
            <div style="height: auto; width: 90%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6;">            
               <div class="row">
                     <div style="border: none;">
                        <div class="cnt">
                        <div style="width:300px; height:auto ;float: left; margin-left: 30px;">                       
                        <h2><span><i class="fas fa-user-friends fa-2x"></i></span>&nbsp;당신과 함께 하고 싶어요&nbsp;</h2>
                           <c:forEach items="${clientInterest}" var="clientInterest">
                        <div  style="float:left; padding-left: 50px; padding-right:20px;margin-top: 10px;"><h2 style="color:#ff5675;">${clientInterest.interest.interestName}</h2></div>
                        </c:forEach>
                        </div>
                        <div  style="width:300px; height:auto ;float: right; margin-right:30px;">    
                        <h2><span><i class="fas fa-icons fa-2x"></i></span>&nbsp;이런 모습은 어때?&nbsp;</h2>
                           <c:forEach items="${clientCharmingPointList}" var="clientCharmingPointList">
                       <div  style="float:left; padding-left: 50px; margin-top: 10px;"><h2 style="color:#ff5675;">${clientCharmingPointList.charmingPoint.charmingPointName}</h2></div>
                        </c:forEach>
                        </div>
                     </div>
               </div>
               </div>
            </div>
         </section>
         </div></div>
   </section>
   
<script type="text/javascript">
   $(function(){
      if(${heartCnt}<=0){
         $(".likesend").click(function(){
            alert("하트가 부족해요ㅜㅜ ");
            $("#insertLikeReceive").attr("action", "Premium_0_main");
         });
      }
      
   });
</script>