<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
	<title>INDIYA</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<style type="text/css">
			.fadding-photo { opacity:0.4;}
			.fadding-photo:hover { opacity:1;}
			a{color:#A0A0A0;}
			i{margin:10px 10px 0px 1px;}
			h1, h2, h3, h4, h5, h6, .heading{font-family:Georgia, "Times New Roman", Times, serif;}
			img{width:200px; height:150px;}<!--4:3-->
			.image_text{position:relative;}			
			.text_on{position:absolute; color:#FFFFFF; top:80px; left:60px; width:100px; opacity:1;}
			#modal{display:none;background-color:#FFFFFF;position:absolute;top:300px;left:200px;padding:10px;border:2px solid #E2E2E2;z-Index:9999}
		</style>		
	</head>
<%@include file="/frame/mpheader.jsp"%>

<body>
<!------------------------------------------- header------------------------------------- -->

   <section id="services" class="service-item">

      <!-- - 여기서 작업 -->
      <main class="hoc container clear" style="padding-top: 50px;"> <!-- main body --> <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first">
         <!-- ################################################################################################ -->
         <h6>Lorem ipsum dolor</h6>
         <nav class="sdb_holder">
            <!-- 왼쪽 메뉴 -->
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
         <%@include file="createtable.jsp"%> 
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

      <div class="content three_quarter">
         <!-- 메인 내용################################################## -->


         <div class="hoc container clear" style="padding-top:0px; width:703px;">
            <div class="row">
         <h1 style="font-family: Nanum Gothic; font-size: 2.5em; font-weight: bold">공연 관리</h1>
         <hr>
 
               <div>
                   
<form action="#" method="post">
<div>
                  <div class="thumbnail" style="width:400px; height:350px;">
                     <div class="caption" style="width:400px; height:300px;">대문 이미지 등록(400px*300px을 추천합니다.)</div>
                     <img src="" alt=""> 
                     <input type="file" style="width:400px;" name="pic" id="pic" value="" required>
                  </div>



	<div>                  
		<div class="input-group" style="width:703px;">
			<span class="input-group-addon" id="">공연일정</span> 
			<input class="form-control input-sm" type="password" id="pass" name="pass" maxlength="12">
		</div>
		<div style="margin-top:5px; margin-bottom:10px;">
			<input type="button" value="추가" onclick="addInput();" style="display:inline;">
			<input type="button" value="삭제" onclick="deleteInput();" style="display:inline;">
		</div>
	</div>  


	<div>                  
		<div class="input-group">
			<span class="input-group-addon" id="">사진등록</span> 
			<input class="form-control input-sm" type="password" id="pass" name="pass" maxlength="12">
		</div>
		<div style="margin-top:5px; margin-bottom:10px;">
			<input type="button" value="추가" onclick="addInput();" style="display:inline;">
			<input type="button" value="삭제" onclick="deleteInput();" style="display:inline;">
		</div>
	</div> 
	
	<div>                  
		<div class="input-group">
			<span class="input-group-addon" id="">공연영상(유튜브연동)</span> 
			<input class="form-control input-sm" type="password" id="pass" name="pass" maxlength="12">
		</div>
		<div style="margin-top:5px; margin-bottom:10px; display:inline;">
		    <input type="file" name="pic" id="pic" value="추가" style="display:inline;" required>
			<input type="button" value="삭제" onclick="deleteInput();" style="display:inline;">
		</div>
	</div> 
                   
<hr>

	<div class="form-group" style="margin-bottom:20px;">
		<label for="comment">공연소개</label>
		<textarea class="form-control" rows="5" id="comment"></textarea>
		<br>
		<button class="btn btn-default" type="submit" style="width:50px;">완료</button> 
	</div>
<br>

</div>
</form>                 
             

</div>
</div>
</div>
</div>

</main>

<!------------------------------------------- footer------------------------------------- -->
<%@include file="/frame/mpfooter.jsp"%>