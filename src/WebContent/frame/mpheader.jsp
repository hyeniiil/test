<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file = "/frame/public.jsp"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>   
<%= com.indiya.util.Encoder.isoToUtf(request.getParameter("word")) %>
<!DOCTYPE html>
<html>
<link href="${root}/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<div class="bgded overlay" style="background-image:url(${root}/images/demo/backgrounds/maintitle.png);"> 

  <div class="wrapper row1"> 
    <header id="header" class="hoc clear"> 
 
      <div id="logo" class="fl_left">
         <h1 class="heading"><a href="../index.html">INDIYA</a></h1>
      </div>      
      
      <nav id="mainav" class="fl_right">
        <ul class="clear">
			  <li><a href="${root}/recruit?act=listarticle&pg=1&key=&word=">recruit</a></li>
		<!--  <li><a href="/Community/list.jsp">community</a> -->
			  <li><a href="${root}/community?act=listarticle&pg=1&key=&word=">community</a>
              <li><a href="pages/gallery.html">Gallery</a></li>
              <li><a href="pages/full-width.html">stage</a></li>
              <li><a href="pages/sidebar-left.html">funding</a></li>
              <li><a href="pages/sidebar-right.html">Q&A</a></li>
              <li><a href="pages/basic-grid.html">LOGIN</a></li>
        </ul>
      </nav>
    </header>
  </div>
  </div>