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

			<h1
				style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">설문 조사 등록</h1>
						<hr>
			
				<section id="contact-form">
					
							<div class="row">

								<div class="block">
							
<!-- ----------------------------soojin----------------------------------------------- -->
			<form>
				<div class="form-group">
					<label for="formGroupExampleInput">설문 조사 질문</label>
					
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="본 설문조사의 질문을 입력하세요">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Question 1</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="Answer1">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Question 2</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="Answer1">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Question 3</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="Answer1">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Question 4</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="Answer1">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Question 5</label>
					<input type="text" class="form-control col-2" id="formGroupExampleInput" placeholder="Answer1">
				</div>
				<div align="right">
					<button type="submit" class="btn btn-outline-primary">작성</button>
				</div>
			</form>


<!-- -------------------------soojin------------------------------------------------- -->
							
							
							
				</section>


			</div>
			<div id="comments" f="center">
				<div class="pagination"></div>
	</div>

			<!-- ################################################################################################ -->
			<!-- / main body -->
			<div class="clear"></div>
		</main>

    </section><!--/#services-->    
<%@include file="/frame/mpfooter.jsp"%>