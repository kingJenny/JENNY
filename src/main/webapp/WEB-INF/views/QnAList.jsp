<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<br><br>
<!--�Խ��� �ش�-->
	<header>
	<h1 align="center">������ ������</h1>
	</header>
<!--�Խ��� �ش�-->
<br><br>
<!--�Խ��� ���̺�-->
			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- ���� �����̾� -->
				<div class="���ƿ�"> 

				</div>
	<div class = "TingToday_list contents-wrap">
		<table class="table table-striped"style="text-align: center; border: 1px solid #dddddd;" width="50">
			<thead>
				<tr>	
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">���ǹ�ȣ</th>					
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">������</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">�ۼ�����</th>							
						</tr>
						</thead>
				<c:forEach items="${qnaList}" var="qnaList">		
						<tr>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${qnaList.boardIdx}</h3></td>
							 
							 <td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><a href="QnAList_view?boardIdx=${qnaList.boardIdx}"><h3>${qnaList.title }</h3></a></td>	
							
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>
								<fmt:formatDate pattern="yyyy/MM/dd" value="${qnaList.regDate }"/>
							</h3></td>				
						</tr>	
				</c:forEach>

			</tbody>
		</table>			
	</div>
	</div>
	</div>