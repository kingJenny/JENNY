<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
select {
width: 200px;
padding: .2em .2em;
border: 1px solid #999;
font-family: inherit;
background: url('resources/upload/arrow.jpg') no-repeat 95% 50%;
border-radius: 0px;
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
font-size: 30px;
}

select::-ms-expand {
    display: none;
}




</style>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

   <section id="fh5co-intro">
      <div class="container">
         <div class=" section-heading text-center">
            <div align="center"
               style="width: 70%; height: auto; border: 1px solid #E5AFF3; border-radius: 1em; margin: 0 auto; margin-top: 50px; padding-bottom: 50px;">

               <div class="ui compact menu" style="float: right; border: 1px solid #E5AFF3; border-radius: 1em;border-style: none;">
                  <div class="ui simple dropdown item">
                     <font _mstmutation="1" _msthash="2126644" _msttexthash="21094424">
                        도움말 / 지원 </font><i class="dropdown icon"></i>
                     <div class="menu">
                        <div class="item" _msthash="3034434" _msttexthash="10065549">-----------
                        </div>
                        <div class="item" _msthash="3035396" _msttexthash="10065666">비밀번호리셋
                        </div>
                        <div class="item" _msthash="3036358" _msttexthash="82082">-----------
                        </div>
                     </div>
                  </div>
               </div>
               
               <p style="padding-top: 40px; width: 250px; margin: 0 auto;">
                  <font size="50pt" style="color:#8D08AE;">나의 프로필</font>
               </p>
               <br>
               <p style="width: 40%; margin: 0 auto;padding-right: 100px; font-size: 20px;color:#8D08AE;">
                  이름 : ${myDetailInfo.name}
               </p>
               <br>
               
            <form method="POST" action="updateClientDetailInfo">
               <div class="field input">
                  <label for="editUserNameInput1">닉네임&nbsp;</label><input type="text"
                     name="nickname" id="editUserNameInput1" placeholder="닉네임" value="${myDetailInfo.nickname}">
               </div>
               <br>
               <div>
                     <h1>자기 소개</h1>
                  <p class="hidden"></p>
                  <div class="field text">
                     <textarea  style="border: 1px solid #E5AFF3; border-radius: 0.5em; resize: none; width: 500px; height: 200px; font-size: 20px; background-color:#F1D9F7;" name="selfIntro" placeholder="자기소개" >${myDetailInfo.selfIntro}</textarea>
                  </div>
               </div>


               <div class="box profileFacts" style="width: 90%; height: auto; border-top: 1px solid #E6E6E6;  margin: 0 auto;margin-top: 30px; padding-top: 30px;"">
               

               

                  <div class="grid cols-1 cols-m-2 form whiteForm factForm">



                     <p>
                     
                     <div>
                        <img alt="" src="resources/images/key.png" style="width: 60px; height: 50px;margin-bottom: 10px;"><label for="factFormField-Height" style="margin-right: 55px;"><font size="6pt" style="margin: 0px;">키</font></label>
                        <div>
                           <select id="factFormField-Height" name="height" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.height}"><h1>${myDetailInfo.height}cm</h1></option>
                              <option value="140">140 cm</option>
                              <option value="141">141 cm</option>
                              <option value="142">142 cm</option>
                              <option value="143">143 cm</option>
                              <option value="144">144 cm</option>
                              <option value="145">145 cm</option>
                              <option value="146">146 cm</option>
                              <option value="147">147 cm</option>
                              <option value="148">148 cm</option>
                              <option value="149">149 cm</option>
                              <option value="150">150 cm</option>
                              <option value="151">151 cm</option>
                              <option value="152">152 cm</option>
                              <option value="153">153 cm</option>
                              <option value="154">154 cm</option>
                              <option value="155">155 cm</option>
                              <option value="156">156 cm</option>
                              <option value="157">157 cm</option>
                              <option value="158">158 cm</option>
                              <option value="159">159 cm</option>
                              <option value="160">160 cm</option>
                              <option value="161">161 cm</option>
                              <option value="162">162 cm</option>
                              <option value="163">163 cm</option>
                              <option value="164">164 cm</option>
                              <option value="165">165 cm</option>
                              <option value="166">166 cm</option>
                              <option value="167">167 cm</option>
                              <option value="168">168 cm</option>
                              <option value="169">169 cm</option>
                              <option value="170">170 cm</option>
                              <option value="171">171 cm</option>
                              <option value="172">172 cm</option>
                              <option value="173">173 cm</option>
                              <option value="174">174 cm</option>
                              <option value="175">175 cm</option>
                              <option value="176">176 cm</option>
                              <option value="177">177 cm</option>
                              <option value="178">178 cm</option>
                              <option value="179">179 cm</option>
                              <option value="180">180 cm</option>
                              <option value="181">181 cm</option>
                              <option value="182">182 cm</option>
                              <option value="183">183 cm</option>
                              <option value="184">184 cm</option>
                              <option value="185">185 cm</option>
                              <option value="186">186 cm</option>
                              <option value="187">187 cm</option>
                              <option value="188">188 cm</option>
                              <option value="189">189 cm</option>
                              <option value="190">190 cm</option>
                              <option value="191">191 cm</option>
                              <option value="192">192 cm</option>
                              <option value="193">193 cm</option>
                              <option value="194">194 cm</option>
                              <option value="195">195 cm</option>
                              <option value="196">196 cm</option>
                              <option value="197">197 cm</option>
                              <option value="198">198 cm</option>
                              <option value="199">199 cm</option>
                              <option value="200">200 cm</option>
                              <option value="201">201 cm</option>
                              <option value="202">202 cm</option>
                              <option value="203">203 cm</option>
                              <option value="204">204 cm</option>
                              <option value="205">205 cm</option>
                              <option value="206">206 cm</option>
                              <option value="207">207 cm</option>
                              <option value="208">208 cm</option>
                              <option value="209">209 cm</option>
                              <option value="210">210 cm</option>
                              <option value="211">211 cm</option>
                              <option value="212">212 cm</option>
                              <option value="213">213 cm</option>
                              <option value="214">214 cm</option>
                              <option value="215">215 cm</option>
                              <option value="216">216 cm</option>
                              <option value="217">217 cm</option>
                              <option value="218">218 cm</option>
                              <option value="219">219 cm</option>
                              <option value="220">220 cm</option></select>
                        </div>
                     </div>
                     </p>

                     <p>
                     <div>
                        <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-dumbbell fa-2x"></i></span>
                  <font size="6pt" style="margin-right: 40px;">체형</font></label>
                        <div>
                           <select id="factFormField-Body" name="bodyShape" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.bodyShape}">${myDetailInfo.bodyShape}</option>
                              <option value="마른">마른</option>
                              <option value="슬림">슬림</option>
                              <option value="보통">보통</option>
                              <option value="다소 볼륨">다소 볼륨</option>
                              <option value="다소 근육">다소 근육</option>
                              <option value="글래머">글래머</option>
                              <option value="근육질">근육질</option>
                              <option value="통통">통통</option>
                              <option value="우람">우람</option></select>
                        </div>
                     </div>
                     </p>

                     <p>
                     <div>
                        <!-- <label for="factFormField-Smoker"><h1>흡연 여부</h1></label> -->
                        <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-smoking fa-2x"></i></span>
                  <font size="6pt" style="margin-right: 40px;">흡연 여부</font></label>
                         <div>
                           <select id="factFormField-Smoker" name="smoke" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.smoke}">${myDetailInfo.smoke}</option>
                              <option value="비흡연">비흡연</option>
                              <option value="가끔">가끔</option>
                              <option value="종종">종종</option>
                              <option value="매일">매일</option></select>
                        </div>
                     </div>
                     </p>


                     <p>
                     <div>
                       <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-beer fa-2x"></i></span>
                  <font size="6pt" style="margin-right: 40px;">음주 여부</font></label>
                        <div>
                           <select id="factFormField-Alcohol" name="drink" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.drink}">${myDetailInfo.drink}</option>
                              <option value="안 마심">안마심</option>
                              <option value="1병 이하">1병 이하</option>
                              <option value="1병-2병">1병-2병</option>
                              <option value="2병 초과">2병 초과</option></select>
                        </div>
                     </div>
                     </p>


                     <p>
                     <div>
                       <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-graduation-cap fa-2x"></i></span>
                  <font size="6pt" style="margin-right: 40px;">학력</font></label>
                        <div>
                           <select id="factFormField-Education" name="education" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.education}">${myDetailInfo.education}</option>
                              <option value="고등학교">고등학교</option>
                              <option value="전문대">전문대</option>
                              <option value="대학교">대학교</option>
                              <option value="석사">석사</option>
                              <option value="박사">박사</option>
                              <option value="기타">기타</option></select>
                        </div>
                     </div>
                     </p>

                     <p>
                     <div>
                       <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-user-tie fa-2x"></i></i></span>
                  <font size="6pt" style="margin-right: 40px;">직업</font></label>
                        <div>
                           <select id="factFormField-Profession" name="job" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.job}">${myDetailInfo.job}</option>
                              <option value="주부">주부</option>
                              <option value="교사">교사</option>
                              <option value="무직">무직</option>
                              <option value="학생">학생</option>
                              <option value="주부">주부</option>
                              <option value="직장인">직장인</option>
                              <option value="영업직">영업직</option>
                              <option value="설비직">설비직</option>
                              <option value="전문직">전문직</option>
                              <option value="기타">기타</option></select>
                        </div>
                     </div>
                     </p>

                     <p>
                     <div>
                        <label for="factFormField-Smoker" style="margin-bottom: 10px;"><span style="padding-right: 10px;padding-bottom: 20px;"><i class="fas fa-cross fa-2x"></i></span>
                  <font size="6pt" style="margin-right: 40px;">종교</font></label>
                        <div>
                           <select id="factFormField-Relationship status" name="religion" style="border-radius: 0.5em;"><option
                                 value="${myDetailInfo.religion}">${myDetailInfo.religion}</option>
                              <option value="무교">무교</option>
                              <option value="기독교">기독교</option>
                              <option value="불교">불교</option>
                              <option value="천주교">천주교</option>
                              <option value="그외">그외</option></select>
                        </div>
                        <div class="fiield" style=" padding: 10px 0px 10px 0px">
                     <h2><input  type="submit" class="btn btn-primary" value="저장하기"></h2>
                        </div>
                     </div>

                     </div>
                  </section>
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
<!-- 아이콘 -->              