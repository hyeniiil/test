<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@include file="/frame/mpheader.jsp"%>
    <section id="services" class="service-item">
    
    <!-- - 여기서 작업 -->
    <!-- 작성하기 누르면 확인창 alert 만들어 봄 -->
   
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
			<div class="sdb_holder">
				<!-- 왼쪽 사이드바 바로밑 내용 
				<h6>Lorem ipsum dolor</h6>
				<address>
					Full Name<br> Address Line 1<br> Address Line 2<br>
					Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
					xxxxxx<br> Email: <a href="#">contact@domain.com</a>
				</address>-->
			</div>
			<div class="sdb_holder">
				<!-- 왼쪽 사이드바 바로밑밑 내용 -->


			</div>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
		<div class="content three_quarter">
			<!-- 메인 내용################################################## -->

			<h1 style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">1:1문의 내역</h1>
		
			
				<section id="contact-form">
					
							<div class="row">

								<div class="block">
									<form name="f" method="post" enctype="multipart/form-data">

										<div class="form-group">
											<br>
											<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
									
													<!--------------------------------------------------------------게시판 본문 ------------------------------------------------------------------------------------->
			
					
												<!-- Title -->
							
												<div name="title">
													<h5>가수 전환을 하고 싶은데 어떻게 하나요??</h3>
												</div>
												<hr>
												<!-- Author & date -->
												<div id="container">
													<div style="float:left">
														by <a href="#">작성자 이름</a>
													</div>
													<div style="float: right">
													January 1, 2018 at 12:00 PM
													</div>
												</div>
												<hr>
												<!-- Post Content -->
												<p>저는 부평 문화의 거리에서 버스킹을 하는 고등학생입니다. 저도 인디야 사이트에 제 공연을 올리고 싶은데 어떻게 해야 할 수 있나요??</p>
												<hr>
										</div>
										<br> <br>
										<hr>
							</div>
									<form>
					
									<div class="form-group">
										<label for="formGroupExampleInput2">답변하기</label>
										 <textarea class="form-control" rows="7" placeholder="내용을 작성하세요"></textarea>
									</div>
									<div align="right">
										<button type="submit" class="btn btn-outline-primary" onclick="javascript:conAlert();">작성하기</button>
										<button type="submit" class="btn btn-outline-primary">목록</button>
										
										
									</div>
								</form>

							</div>
							
				</section>


			</div>
			<div id="comments" f="center">
			<div class="pagination"></div>
			

			<!-- ################################################################################################ -->
			<!-- / main body -->
			<div class="clear"></div>
		</main>

    </section><!--/#services-->    
<%@include file="/frame/mpfooter.jsp"%>   