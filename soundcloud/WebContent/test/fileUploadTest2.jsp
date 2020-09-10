<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String realPath = request.getServletContext().getRealPath("/upload");
	System.out.println("realPath : " + realPath);
	int maxSize = 10*1024*1024;
	
	MultipartRequest multi = new MultipartRequest
			(
			request, 
			realPath, 
			maxSize, 
			"UTF-8",
			new DefaultFileRenamePolicy()
			);
	// request 되는 순간 null 로 변함
	String fileName = multi.getFilesystemName("uploadFile");
	String original = multi.getOriginalFileName("uploadFile");
	fileName = request.getParameter("fileName");
	String type = multi.getContentType("uploadFile");
	File file = multi.getFile("uploadFile");
	System.out.println("");
	
	
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Deerhost Template">
<meta name="keywords" content="Deerhost, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>FileUploadTest2 - 파일 받아서 write</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/soundcloud/deerhost/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/soundcloud/deerhost/css/style.css" type="text/css">

<link rel="stylesheet" type="text/css" href="/soundcloud/login/css/main.css">

<link rel="stylesheet" href="/soundcloud/css/upload.css">
<link rel="stylesheet" href="/soundcloud/css/uploadHtml.css">

</head>

<body>
	<!-- Offcanvas Menu Begin -->
	<div class="offcanvas__menu__overlay"></div>
	<div class="offcanvas__menu__wrapper">
		<div class="canvas__close">
			<span class="fa fa-times-circle-o"></span>
		</div>
		<div class="offcanvas__logo">
			<a href="#"><img src="img/logo.png" alt=""></a>
		</div>
		<nav class="offcanvas__menu mobile-menu">
			<ul>
				<li><a href="/soundcloud/main?cmd=home">Home</a></li>
				<li><a href="/soundcloud/board?cmd=stream">Stream</a></li>
				<li><a href="/soundcloud/board?cmd=library">Library</a></li>
				<li><a href="/soundcloud/board?cmd=fileUpload">Upload</a></li>
				<li><a href="#">YOURS</a>
					<ul class="dropdown">
						<li><a href="/soundcloud/board?cmd=profile">Profile</a></li>
						<li><a href="/soundcloud/board?cmd=library">Likes</a></li>
						<li><a href="/soundcloud/board?cmd=library">Following</a></li>
						<li><a href="/soundcloud/users?cmd=logout">Sign out</a></li>
					</ul></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="offcanvas__auth">
			<ul>
				<li><a href="#"><span class="icon_chat_alt"></span> Live chat</a></li>
				<li><a href="#"><span class="fa fa-user"></span> Login / Register</a></li>
			</ul>
		</div>
		<div class="offcanvas__info">
			<ul>
				<li><span class="icon_phone"></span> +1 123-456-7890</li>
				<li><span class="fa fa-envelope"></span> Support@gmail.com</li>
			</ul>
		</div>
	</div>
	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->
	<header class="header-section header-normal">

		<div class="container">
			<div class="row header__front">
				<div class="col-lg-1 col-md-1">
					<div class="header__logo">
						<a href="/soundcloud/main?cmd=home"><img src="/soundcloud/deerhost/img/logo-white-cloud.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="header__menu">
						<ul>
							<li><a href="/soundcloud/main?cmd=home">Home</a></li>
							<li><a href="/soundcloud/board?cmd=stream">Stream</a></li>
							<li><a href="/soundcloud/board?cmd=library">Library</a></li>
							<li><a href="/soundcloud/board?cmd=fileUpload">Upload</a></li>
							<li><a href="#">YOURS</a>
								<ul class="dropdown">
									<li><a href="/soundcloud/board?cmd=profile">Profile</a></li>
									<li><a href="/soundcloud/board?cmd=library">Likes</a></li>
									<li><a href="/soundcloud/board?cmd=library">Following</a></li>
									<li><a href="/soundcloud/users?cmd=logout">Sign out</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="canvas__open">
				<span class="fa fa-bars"></span>
			</div>
		</div>
	</header>
	<!-- Header End -->

	<!-- Blog Section Begin -->
	<section class="blog-section">
		<div class="container">
			<div class="col-lg-13">
				<input name="fileName" value="<%=fileName%>">


				<div class="detail-submit">
					<div class="ds-image-box">
						<img><label class="imageLabel">Upload Image<input class="h-input" type="file"></label>
					</div>
					<div class="track-detail-form">
						<p class="tdf-text tdf-required">Title</p>
						<input class="txt-input" type="text" value="">
						<p class="tdf-text">Description</p>
						<textarea class="txt-input txta active-ring"></textarea>
						<input class="inputLabel" type="submit" value="create">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->


	<!-- Js Plugins -->
	<script src="/soundcloud/deerhost/js/jquery-3.3.1.min.js"></script>
	<script src="/soundcloud/deerhost/js/bootstrap.min.js"></script>
	<script src="/soundcloud/deerhost/js/jquery.slicknav.js"></script>
	<script src="/soundcloud/deerhost/js/owl.carousel.min.js"></script>
	<script src="/soundcloud/deerhost/js/main.js"></script>

</body>

</html>