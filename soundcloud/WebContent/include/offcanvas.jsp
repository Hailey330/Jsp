<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas__menu__overlay"></div>
<div class="offcanvas__menu__wrapper">
	<div class="canvas__close">
		<span class="fa fa-times-circle-o"></span>
	</div>
	<div class="offcanvas__logo">
		<a href="#"><img src="#" alt=""></a>
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
</div>
<!-- Offcanvas Menu End -->