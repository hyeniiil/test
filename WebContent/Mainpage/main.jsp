<%@page import="com.indiya.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>

<!---!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!로그인 하려고 해놓은 부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
<%
MemberDto memberDto = new MemberDto();
memberDto.setId("fdsafds");
memberDto.setName("sd");

session.setAttribute("userInfo", memberDto);
session.setAttribute("userId", memberDto.getId());
%>    
<!---!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!로그인 하려고 해놓은 부분!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->


<!--   <div style="background-color: white"> -->
<div id="pageintro" class="hoc clear"
style="background-image:url('/images/demo/backgrounds/01.png');"> 
    <!-- ################################################################################################ -->
    <div class="flexslider basicslider">
      <ul class="slides">
        <li>
          <article>
            <p>Ullamcorper</p>
            <h3 class="heading">Maecenas nulla tellus</h3>
            <p>Vitae lobortis id ut mi in molestie in</p>
            <footer><a class="btn" href="#">Venenatis curabitur</a></footer>
          </article>
        </li>
        <li>
          <article>
            <p>Scelerisque</p>
            <h3 class="heading">Dolor rhoncus nullam</h3>
            <p>Augue non id quam sit amet urna lobortis</p>
            <footer><a class="btn inverse" href="#">Interdum lectus</a></footer>
          </article>
        </li>
        <li>
          <article>
            <p>Vestibulum</p>
            <h3 class="heading">Justo erat venenatis</h3>
            <p>Tempor sit amet ac nibh nullam mattis</p>
            <footer><a class="btn" href="#">Bibendum magna</a></footer>
          </article>
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->

<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="btmspace-20">
      <h3 class="nospace"><b>공연</b></h3>
    </div>
    <ul class="nospace group services">
      <li class="one_quarter first active">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap">
		  	<br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_quarter">
        <article class="bgded overlay" style="background-image:url('${root}/images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_quarter active">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
	  <li class="one_quarter">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
	</ul>
	<div class="btmspace-20">
      <h3 class="nospace"><b>가수</b></h3>
	</div>
	<ul class="nospace group services">
      <li class="one_quarter first">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap">
		  	<br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_quarter active">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
      <li class="one_quarter">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
	  <li class="one_quarter active">
        <article class="bgded overlay" style="background-image:url('images/demo/gallery/01.png');">
          <div class="txtwrap"><br></br>
			<br></br>
			<br></br>
			<h6 class="heading"><p style="text-align: right;">버스킹버스킹</p></h6>
            <p style="text-align: right;">홍대 18:00</p>
          </div>
          <footer><a href="#">More &raquo;</a></footer>
        </article>
      </li>
    </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="btmspace-80 center">
      <h3 class="nospace">INDIYA</h3>
      <p class="nospace">Erat volutpat integer vestibulum purus et sagittis rhoncus.</p>
    </div>
    <div class="group">
	  <article class="one_half first">
         <h6 class="nospace font-x1">Notice</h6><br>
        <table>
          <tbody>
            <tr>
              <td><a href="#">공지1</a></td>
            </tr>
            <tr>
              <td><a href="#">공지2</a></td>
            </tr>
            <tr>
              <td><a href="#">공지3</td>
            </tr>
            <tr>
              <td><a href="#">공지4</a></td>
            </tr>
          </tbody>
        </table>
      </article>
      <div class="one_half">
		<h6 class="nospace font-x1">Survey</h6><br>
        <div class="col-sm-12" style="border: 2px solid #bcbcbc; border-radius: 10px;">
			<form class="form-horizontal" action="#">
                <fieldset>
                 <div class="form-group">
                       <div class="col-sm-12"">
                          <label id="question">Q.한달동안 버스킹을 접하는 횟수는?</label>
                    	 <li><input type="radio" name="answer" value="date_asc" checked="checked" style="display:inline;">1회</li>
                     	<li><input type="radio" name="answer" value="date_desc" style="display:inline;">2회<br></li>
                     	<li><input type="radio" name="answer" value="loc_asc" style="display:inline; ">3회이상<br></li>
                       </div>
                   </div>
                   <div class="form-group pull-right">
                      <div class="col-sm-12">
                        <button type="button" id="pollBtn" class="btn btn-xs btn-info">투표하기</button>
                       <button type="button" id="resultBtn" class="btn btn-xs btn-default">결과보기</button>
                     </div>
                </div>
                <!-- 
                <div class="pull-right">
                         <label id="period">투표기간 : 2017.07.01 ~ 2017.07.30</label>
                      </div> -->
			   </fieldset>
			</form>
		</div>
      </div>
    </div>
    <!-- ################################################################################################ -->
  </section>
</div>


<%@ include file="/frame/mpfooter.jsp"%>
