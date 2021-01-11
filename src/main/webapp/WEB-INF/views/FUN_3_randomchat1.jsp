<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>팅피플랜덤채팅</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" >
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
		<link rel="stylesheet" href="resources/css/chat.css">
		 
</head>

	<body>
		<div class="container-fluid h-100">
	<button  id="Client_0_main" class="btn btn-default btn-lg" onclick="closeSocket();">마이페이지로 돌아가기</button>
			<div class="row justify-content-center h-100">
			
			
				<div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
					<div class="card-header">
							<div class="input-group">
							<input type="text" placeholder="채팅에 사용하실 닉네임을 입력해주세요" id="nickname" class="form-control type_msg" >
							<div class="input-group-prepend">
								
							</div>
						</div>
					</div>
					<div class="card-body contacts_body">
						<ul class="contacts">
						
								<li onclick="openSocket();">
								<div class="d-flex bd-highlight">
								<div class="img_cont">	
									<img src="resources/images/tempmsg.png" class="rounded-circle user_img">			
								</div>
								<div class="user_info">
								<span>팅피플 소통방1</span>
								</div>
								</div>
								</li>
		
						</ul>
					</div>
					<div class="card-footer"></div>
				</div></div>
				<div class="col-md-8 col-xl-6 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img src="resources/images/tempmsg.png" class="rounded-circle user_img">
									<span class="online_icon"></span>
								</div>
								<div class="user_info" >
									<span> ★☆★팅피플 소통방1 ★☆★</span>
								</div>
								
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li><i class="fas fa-user-circle"></i> View profile</li>
									<li><i class="fas fa-users"></i> Add to close friends</li>
									<li><i class="fas fa-plus"></i> Add to group</li>
									<li><i class="fas fa-ban"></i> Block</li>
								</ul>
							</div>
						</div>
						<div class="card-body msg_card_body">			
							<div id="messages"></div>
												
						</div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
								</div>
								<textarea id="sendmsg"  class="form-control type_msg" placeholder="메세지를 입력하세요"></textarea>
								
								<div class="input-group-append">
				
									<button type="button" onclick="send()">
											<span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		

	</body>




<!-- ------------------------------------------------------------------------------------------------------------------- -->
  

    <script type="text/javascript">
    
        var ws;
        var messages = document.getElementById("messages");
        
        function openSocket(){
            if(ws !== undefined && ws.readyState !== WebSocket.CLOSED ){
                writeResponse(" 참여 중입니다.");
                return;
            }
            
            ws = new WebSocket("ws://192.168.0.18:80/echo");
            
            ws.onopen = function(event){
                if(event.data === undefined){
              		return;
                }
                writeResponse(event.data);
            };
            
            ws.onmessage = function(event){
                console.log('writeResponse');
                console.log(event.data)
                writeResponse(event.data);
            };
            
            ws.onclose = function(event){
                writeResponse("랜덤채팅퇴장");
            }
        }
        
        function send(){
           // var text=document.getElementById("messageinput").value+","+document.getElementById("sender").value;
            var text = $('#sendmsg').val()+","+ $('#nickname').val();
            $('#sendmsg').val('');
            ws.send(text);
            text = "";
            $('.msg_card_body').scrollTop($('.msg_card_body')[0].scrollHeight);
        }
        
        function closeSocket(){
            ws.close();
        }
        
        function writeResponse(text){
            messages.innerHTML += "<br/>"+text;
        }

        function clearText(){
            console.log(messages.parentNode);
            messages.parentNode.removeChild(messages)
      	}
        
  </script>
</body>
</html>