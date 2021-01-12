<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 현재날짜 --> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
<!-- 현재날짜 -->



   <style>
      a{
       font-family:'Jua', sans-serif
      }
      
      .pagination > li > a{      
      height: 50px;
      padding-top: 15px;
      width: 45px;
      }
      
      form > button{
      position: relative;
      left:255px;
      }
   </style>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
            <div align="center"
               style="width: 100%; height: 100%; border: 0px solid; border-radius: 2em;"
               class="col-md-12 section-heading text-center">
               <font size="50pt">문의내역 상세보기</font>
            </div>
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

   <section id="fh5co-intro" data-section="love">
      <div class="container">
         <div class=" section-heading text-center">
            <div align="center"
               style="width: 50%; height: auto; border: 1px solid #F1D9F7; border-radius: 1em; margin: 0 auto;">
         
               
               <div style="height: auto; width: 90%; text-align:left; padding-bottom: 10px">
                  
                  <div class="WriterInfo" style="padding-bottom: 15px">
               
                     <div class="profile_area">
                        <div class="article_info" style="padding-top: 10px">
                  <h3 style="color:black;">제목&nbsp;:&nbsp;&nbsp;${board.title}
								<br>작성일자&nbsp;:&nbsp;&nbsp;<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate }"/> </h3>      
                           <%-- <span class="date"><c:out value="${today}"/></span> --%>
                        </div>
                     </div>
                  </div>
               </div>
               <div  style="height: auto; width: 90%; padding:40px 0px 40px 0px ; text-align:left; border-bottom: 1px solid #F1D9F7; border-top: 1px solid #F1D9F7;">
               
            <textarea class="form-control" rows="6" name="content" style="border:none" > ${board.content}</textarea><br><br><br>
       
          </div>              
             <button type="button" class="ui teal button" onclick="location.href='selectQnAList'">목록</button>   
     </div>          
     

           
      </div>
      </div>   
   </section>