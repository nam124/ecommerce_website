<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="<c:url value="/resources/user/themes/bootshop/bootstrap.min.css"/>" media="screen"/>
    <link href="<c:url value="/resources/user/themes/css/base.css"/>" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="<c:url value="/resources/user/themes/css/bootstrap-responsive.min.css"/>" rel="stylesheet"/>
	<link href="<c:url value="/resources/user/themes/css/font-awesome.css"/>" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="/resources/user/themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="<c:url value="/resources/user/themes/images/ico/favicon.ico"/>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/user/themes/images/ico/apple-touch-icon-144-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/user/themes/images/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/user/themes/images/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/user/themes/images/ico/apple-touch-icon-57-precomposed.png"/>">
	<style type="text/css" id="enject"></style>

  </head>
<body>
<div id="header">
<div class="container">

<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="<c:url value="/resources/user/themes/images/logo.png"/>" alt="Bootsshop"/></a>
		<form:form modelAttribute="searchFormWeb" servletRelativeAction="/web/list/1" class="form-inline navbar-search" method="post">
		<form:input path="code"  class="srchTxt" placeholder="Tìm Kiếm" type="text" />
		  <form:select path="name" class="srchTxt">
			  <form:option value="" label="LỌC LAPTOP" />
			 <form:option value="DELL" label="LAPTOP DELL" />
			 <form:option value="ASUS" label="LAPTOP ASUS" />
		</form:select> 
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form:form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="#">Bảo Hành</a></li>
	 <li class=""><a href="#">Liên Hệ</a></li>
	 <li class="">
	 <a href="<c:url value="/login"/>" role="button" data-toggle="modal" style="padding-right:0"><span class="btn btn-large btn-success">Đăng Nhập</span></a>
	<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Login Block</h3>
		  </div>
		  <div class="modal-body">
			<form class="form-horizontal loginFrm">
			  <div class="control-group">								
				<input type="text" id="inputEmail" placeholder="Email">
			  </div>
			  <div class="control-group">
				<input type="password" id="inputPassword" placeholder="Password">
			  </div>
			  <div class="control-group">
				<label class="checkbox">
				<input type="checkbox"> Remember me
				</label>
			  </div>
			</form>		
			<button type="submit" class="btn btn-success">Sign in</button>
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		  </div>
	</div>
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
<div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  <div class="item active">
		  <div class="container">
			<a href="#"><img style="width:100%" src="<c:url value="/resources/user/themes/images/carousel/1.jpg"/>" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="#"><img style="width:100%" src="<c:url value="/resources/user/themes/images/carousel/2.jpg"/>" alt=""/></a>
				<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>
		  <div class="item">
		  <div class="container">
			<a href="#"><img src="<c:url value="/resources/user/themes/images/carousel/3.jpg"/>" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
			
		  </div>
		  </div>
		   <div class="item">
		   <div class="container">
			<a href="#"><img src="<c:url value="/resources/user/themes/images/carousel/4.jpg"/>" alt=""/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		   
		  </div>
		  </div>
		   
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>
<div id="mainBody">
	<div class="container">
	<div class="row">
<!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
			 <tiles:insertAttribute name="sidebar"  ></tiles:insertAttribute> 
		
	</div>
<!-- Sidebar end=============================================== -->
			<div class="span9">		
				 
				 <tiles:insertAttribute name="content"  ></tiles:insertAttribute> 
			</div>
		</div>
	</div>
</div>
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<div class="row">
		
			<div class="span3">
				<h5>LUONGNAM Company</h5>
			 </div>
			 <div class="span3">
				<h5>Ưu Tiên Chất Lượng Hàng Đầu</h5>
			 </div>
			<div id="socialMedia" class="span3 pull-right">
				<h5>SOCIAL MEDIA </h5>
				<a href="https://www.facebook.com/profile.php?id=100013192449548"><img width="60" height="60" src="<c:url value="/resources/user/themes/images/facebook.png"/>" title="facebook" alt="facebook"/></a>
				<a href="#"><img width="60" height="60"src="<c:url value="/resources/user/themes/images/twitter.png"/>" title="twitter" alt="twitter"/></a>
				<a href="#"><img width="60" height="60" src="<c:url value="/resources/user/themes/images/youtube.png"/>" title="youtube" alt="youtube"/></a>
			 </div> 
		 </div>
	
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="<c:url value="/resources/user/themes/js/jquery.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/user/themes/js/bootstrap.min.js"/>" type="text/javascript"></script>
	<script src="<c:url value="/resources/user/themes/js/google-code-prettify/prettify.js"/>"></script>
	
	<script src="<c:url value="/resources/user/themes/js/bootshop.js"/>"></script>
    <script src="<c:url value="/resources/user/themes/js/jquery.lightbox-0.5.js"/>"></script>
	
</body>
</html>