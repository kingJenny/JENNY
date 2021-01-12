<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
<!----------------------------------content start---------------------------------->
<%-- <c:forEach items="${memberList}" var="member"> --%>
<style type="text/css">
.label-popular, .label-rcmd {
    position: absolute;
    top: 0px;
    left: 0;
    width: 86px;
    height: 87px;
    line-height: 57px;
    background-repeat: no-repeat;
    z-index: 5;
    font-size: 12px;
    font-weight: 900;
    text-align: center;
    padding-right: 5px;
    padding-top: 8px;
}


.label-popular {
    background-image: url(resources/images/rebon1.png);
}
</style>

<section id="fh5co-about" ><!-- 여기 바꿀것 -->
      <div class="container">
         <div class="row">
            <div class="col-md-12 section-heading text-center">
               <h2 class="to-animate"><i class="fas fa-gift"></i>&nbsp; Premium
               </h2>               
               <div class="row">
                  <div class="col-md-8 col-md-offset-2 subtext to-animate">
                     <h1>
                     <font style="color: #610E77; text-decoration: underline">별</font>로  
                     <font style="color: #610E77; text-decoration: underline">인생친구</font>를 찾아보세요!
                     </h1>
                  
                  </div>
               </div>
            </div>
         </div>         
         <div class="row">  
			<!--  이슈 : 폼은 따로 전달 해야 한다., 자바스크립/jQuery 는 id가 중복되어서는 동작이 안되기 때문에 ...
				  class로 바꿔서 핸들링 했다.
			 -->
			<c:forEach items="${GoodsList}" var="goods">	
				<form class="pay" method="post">			
						<div class="col-md-4">
							 <div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #C55ADF 0%, #620978 100%);border-radius: 1em;border:2px solid  #620978 ">
                        <input type="hidden" value="${sessionScope.clientIdx}" name="clientIdx">
                        <input type="hidden" value="${goods.goodIdx}" name="goodIdx">       							
								<input type="hidden" value="resources/images/img_7.jpg" name="poto">
								<div class="label-popular" style="border-radius: 1em;border:0px solid  #E6E6E6 ">50%할인</div>
								<input type="hidden" name="heartcnt" value="★${ goods.heartcnt}개">								
								<img src="resources/images/buyheart.jpg" width="100px;" height="100px;">
								<hr>
                        <p><h2> ${goods.goodName }</h2></p> 
								<p><h3>★${ goods.heartcnt}개</h3></p>
                        <h2><font style="color: #ED4B4E; text-decoration: underline">${ goods.price}원</font></h2>            
                     <input type="hidden" value="${goods.price}" name="Price">
                        <input class="btn btn-primary btn-lg"  type="submit"  value="결제하기">         
								<!-- 나중에 변수로 넣을 것 -->
							</div>
						</div>		
				</form>						
			</c:forEach>	
			
			</div>
         <br><br><br><br>
   <div class="fh5co-person text-center to-animate" style="border: 2px solid  #E6E6E6;height: auto;padding: 30px;background-color:#FAFAFA;border-radius: 1em;text-align: left; " > 
   <h2>※ Jenny여러분! 결제시 참고해주세요!</h2><br>
   <!-- <p>▶ 모든 결제상품 금액은 부가세(VAT) 10% 별도입니다.</p> -->
   <p>★ 별의 이용기한은 적립일로부터 무제한이니 기한 걱정이 없어요!</p>   
   <p>★ 상품을 잘못 선택하여 결제한 경우, 바로 문의주세요!</p>
   <p>★ 문의 내용은 3일 이내에 가입하신 계정의 이메일로 발송 됩니다.</p>   
   <p>★ 별 결제 후 1개라도 사용했을 경우, 환불이 불가한 점 인지해주세요!</p>
   <p>★ 정기 및 임시 점검시간에는 서비스가 잠시 지연될 수 있습니다. (미리 공지)</p>
		</div>
	</section>


	<script language="javascript">
	
		
	 $(document).ready(function() {
		 //# = id  . = class 
		 //id = 중복안됨  class = 중복 가능
		 // for each 문으로 반복할때 값이 중복 되면 첫번째 값만 출력된다.
		 // class 는 중복이 가능하기때문에 DB에 있는 값이 차례대로  들어가게 된다.
		$('.pay').submit(function() {
		window.open('', 'payviewer', 'width=600,height=800,left=650,top=100,resizeable,scrollbars');
		this.action = 'Premium_1_payment';
		this.method = 'POST';
		this.target = 'payviewer';
		});
		    
	});
		</script> 