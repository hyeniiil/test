<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frame/mpheader.jsp"%>
<script>
function writeComplete(){
	if(document.writeForm.title.value == ""){
		alert("제목을 입력하세요");
		return;
	}else if(document.writeForm.contents.value == ""){
		alert("내용을 입력하세요");
		return;
	}else{
		document.writeForm.action = "${root}/community";
		document.writeForm.submit();
	}
}

function list(){
	document.location.href = "${root}/community?act=listarticle&pg=1";
}
</script>


<section id="services" class="service-item">
<body>
<!--------------------------------------------------------------------------------------------------------------------------------------------->	
<div class="wrapper row3">
	<main class="hoc container clear"> <!-- main body -->
		<div class="content">
			<h2><b><font color="black">Community</font></b></h2>
<!--------------------------------------------------------------글쓰기 ---------------------------------------------------------------------------->
			<div class="row">
			<hr style="border-top: 2px solid #bbb; border-bottom: 1px solid #fff;">
			<form id="writeForm" name="writeForm" method="post" action="">
			<input type="hidden" name="act" value="writearticle">
			<input type="hidden" name="pg" value="1">
			<input type="hidden" name="key" value="">
			<input type="hidden" name="word" value="">
			
				<div id="container">
					<div id="title">
						<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
					</div>
					<hr>
					<div>
					  <textarea class="form-control" rows="7" id="contents" name="contents" placeholder="내용을 입력하세요." required></textarea>
					</div>
					<hr>
					<div>
						<button type="button" class="btn btn-default pull-right" onclick="javascript:writeComplete();">작성하기</button>
						<button type="button" class="btn btn-outline-secondary" onclick="javascript:list();">목록으로</button>
					</div>
				</div>
			</form>
			</div>
		</div>
	</main>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------> 

</section><!--/#services-->    
 <%@include file="/frame/mpfooter.jsp"%>    
