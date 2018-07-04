<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@include file="/frame/mpheader.jsp"%>
    <section id="services" class="service-item">
    
    <!-- - 여기서 작업 -->
    <main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sidebar one_quarter first">
			<!-- ################################################################################################ -->
			<h6>Lorem ipsum dolor</h6>
			<nav class="sdb_holder">
				<!-- 왼쪽 메뉴 -->
				<ul>
					<li><a href="member.html">회원 관리</a></li>
					<li><a href="coin.html">결제 내역</a></li>
					<li><a href="funding.html">펀딩 관리</a></li>
					<li><a href="survey.html">설문 조사</a></li>
					<li><a href="Q&A.html">문의 내역</a></li>
					<li><a href="chart">통계</a></li>
					<li><a href="banner">배너</a></li>
				</ul>
			</nav>
			
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
		<!-- ################################################################################################ -->
		<div class="content three_quarter">
			<!-- 메인 내용################################################## -->

			<h1 style="font-family:Nanum Gothic; font-size:2.5em; font-weight: bold" >1:1문의 내역</h1>
			<hr>
			
			<div class="scrollable">
			
				<table class=" table table-hover">
					<thead>
						<tr>
							<!-- 표의 제목 -->
							<th>문의사항</th>
							<th width="200">작성자</th>
							
							
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="./Q&A_ad.jsp">Value 5</a></td>
							<td>Value 2</td>
							
							
						</tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 5</td>
					
							
						</tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 10</td>
				
						</tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 5</td>
					
						</tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 5</td>
						
						</tr>
						<tr>
							<td><a href="#">Value 5</a></td>
							<td>Value 5</td>
					
						</tr>
					</tbody>
				</table>
			</div>
			<!----------------- 페이징 -------------------------------------------->

                  <nav class="pagination">
			        <ul>
			          <li><a href="#">&laquo;</a></li>
			          <li><a href="#">1</a></li>
			          <li><a href="#">2</a></li>
			          <li class="current"><a href="#">3</a></li>
			          <li><a href="#">4</a></li>
			          <li><a href="#">5</a></li>
			          <li><a href="#"> &raquo;</a></li>
			        </ul>
			      </nav>
				</div>
			<!-- ################################################################################################ -->
	

		<!-- / main body -->
		<div class="clear"></div>
		</main>

    </section><!--/#services-->    
    <%@include file="/frame/mpfooter.jsp"%>