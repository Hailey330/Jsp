<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
								<li><a href="/soundcloud/users?cmd=profileUpload">Profile</a></li>
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