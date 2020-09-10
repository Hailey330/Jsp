<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="include/main/nav.jsp"%>

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="hero__slider owl-carousel">
		
		<!-- 메인화면 1 -->
			<div class="hero__item set-bg" data-setbg="deerhost/img/hero/hero-3.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<h2>Connect on SoundCloud</h2>
								<h5>
									Discover, stream, and share <br/> a constantly expanding mix of music
								</h5>
								<a href="user/join.jsp" class="primary-btn">Sign up for free</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="deerhost/img/hero/creator.webp" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 메인화면 2 -->
			<div class="hero__item set-bg" data-setbg="deerhost/img/hero/hero-5.jpg">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="hero__text">
								<h2>Calling all creators</h2>
								<h5> Get on SoundCloud to connect with fans, <br/> share your sounds, and grow your audience.</h5>
								<a href="user/join.jsp" class="primary-btn">Sign up for free</a>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hero__img">
								<img src="deerhost/img/hero/create.webp" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Register Domain Section Begin -->
	<section class="register-domain spad">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="register__text">
						<!--  검색창 타이틀 -->
						<div class="section-title">
							<h3> Hear what’s trending for free <br> in the SoundCloud community </h3>
						</div>
						
						<!-- 검색창 -->
						<div class="register__form">
							<form action="#">
								<input type="text" placeholder="Search for artists, bands, tracks, podcasts">
								<button type="submit" class="site-btn">Search</button>
							</form>
							<div class="section-title">
								<br /> <br />
								<h4>or</h4>
							</div>
							<div class="upload__form">
								<button type="submit" class="site-btn">Upload your own</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Register Domain Section End -->
	
<%@ include file="include/main/footer.jsp"%>