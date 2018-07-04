<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/frame/mpheader.jsp"%>

<body>
	
	<section id="services" class="service-item">

		<!-- - 여기서 작업 -->
		<main class="hoc container clear"> <!-- main body --> <!-- ################################################################################################ -->
		<div class="sidebar one_quarter first">
			<!-- ################################################################################################ -->
			<h6>Lorem ipsum dolor</h6>
			<nav class="sdb_holder">
				<!-- 왼쪽 메뉴 -->
				<div class="card" style="width: 200px">
					<img src="../images/demo/avatar.png" alt="Card image"
						class="img-circle" height="10">

					<p>당신은 '관객' 등급입니다!</p>
					<div class="card-body">
						<h4 class="card-title">John Doe</h4>
						<p class="card-text">Some example text some example text. John
							Doe is an architect and engineer</p>
						<address>
							Email: <a href="#">contact@domain.com</a>
						</address>
					</div>
				</div>
				<ul>
					<li><a href="mypagemodify.jsp">정보수정</a></li>
					<li><a href="mypageschedule.jsp">일정관리</a></li>
					<li><a href="mypageX.jsp">찜목록</a></li>
					<li><a href="mypage">결제내역확인</a></li>
					<li><a href="survey.html">펀딩목록확인</a></li>
					<li><a href="Q&A.html">뮤지션 전환</a></li>
					<br>
					<br>
					<li><a href="performanceregister.jsp">공연등록</a></li>
					<li><a href="banner">공연일정관리</a></li>
					<li><a href="banner">홈피수정</a></li>
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
		<!-- ################################################################################################ -->
		<div class="content three_quarter">
			<!-- 메인 내용################################################## -->

			<h1
				style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">펀딩내역확인</h1>
			<hr>
			<form class="form-search">
				<a class="btn btn-mini" href="#"
					style="float: right; WIDTH: 80pt; HEIGHT: 25pt"><i
					class="icon-search"></i>search</a> <input type="text"
					class="input-small search-query"
					style="float: right; WIDTH: 120pt; HEIGHT: 25pt">
			</form>
			<div class="scrollable">

				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>밴드명</th>
							<th>누적금액</th>
							<th>최근결제일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1.</td>
							<td>끓여야맛</td>
							<td>라면은</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>2.</td>
							<td>구워야맛</td>
							<td>고기는</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
						<tr>
							<td>3.</td>
							<td>뭐가문제인거냐</td>
							<td>대체</td>
							<td><a href="#">2018-02-02</a></td>
						</tr>
					</tbody>
				</table>
				<center>
					<form class="form-inline" action="/action_page.php">
						<span><font size="3">보유코인:</font></span>
						<input type="email" class="form-control" id="email"
							placeholder="Enter email" name="email">
					</form>
					<hr style="color: aqua;">
					<br>
				</center>
				<h1>그래프</h1>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

			</div>
			<div id="comments" f="center">
				<div class="pagination">

					<ul>
						<li class="disabled"><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1</a></li>
						<li class="active"><a href="#">2</a></li>
						<li class="active"><a href="#">3</a></li>
						<li class="active"><a href="#">4</a></li>
						<li class="active"><a href="#">5</a></li>
						<li class="disabled"><a href="#">&raquo;</a></li>
					</ul>
				</div>

			</div>
			<!-- ################################################################################################ -->


			<!-- ################################################################################################ -->
			<!-- / main body -->
			<div class="clear"></div>
	</section>
	<!--/#services-->
	<%@include file="/frame/mpfooter.jsp"%>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	