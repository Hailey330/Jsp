<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="include/home/nav.jsp"%>

<!-- Blog Section Begin -->
<section class="blog-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="blog__header">
					<div class="blog__title">
						<h4>More of what you like</h4>
					</div>
					<div class="blog__subtitle">
						<p>Suggestions based on what you've liked or played</p>
					</div>
				</div>

				<!-- likeCount순으로 앨범 커버 뿌리기(el 사용) + 크리에이터  -->
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test7.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">Godless Heathens</a>
								</h5>
								<ul>
									<li>Skin Mag</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test2.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">Night ride</a>
								</h5>
								<ul>
									<li>Eddie Rohosy</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test3.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">lovesick</a>
								</h5>
								<ul>
									<li>potsu</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test4.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">don't know why</a>
								</h5>
								<ul>
									<li>imyurs</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test5.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">autumn morning</a>
								</h5>
								<ul>
									<li>softy</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="blog__item">
							<div class="blog__pic set-bg" data-setbg="deerhost/img/cover-test.jpg"></div>
							<div class="blog__text">
								<h5>
									<a href="#">Your Sunday</a>
								</h5>
								<ul>
									<li>moringyou</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- 무한 스크롤 버튼 -->
					<div class="col-lg-12">
						<div class="load-more">
							<a href="#" class="primary-btn">Load more posts</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3">
				<div class="blog__sidebar">
					<div class="blog__sidebar__item">
						<div class="sidebar__title">
							<h6>Follow us</h6>
						</div>
						<!-- 사이드바 follow -->
						<div class="sidebar__social">
							<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a href="#" class="youtube"><i class="fa fa-youtube-play"></i></a> <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
						</div>
					</div>

					<div class="blog__sidebar__item">
						<div class="sidebar__title">
							<h6>Likes</h6>
						</div>
						<div class="sidebar__feature__post">
							<div class="sidebar__feature__item">

								<h6>
									<a href="#">The Best</a>
								</h6>

								<ul>
									<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
								</ul>
							</div>
							<div class="sidebar__feature__item">
								<h6>
									<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
								</h6>
								<ul>
									<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
								</ul>
							</div>
							<div class="sidebar__feature__item">
								<h6>
									<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
								</h6>
								<ul>
									<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
								</ul>
							</div>
							<div class="sidebar__feature__item">
								<h6>
									<a href="#">The Best Web Hosting Service with Bitcoin at GeeksHosted</a>
								</h6>
								<ul>
									<li><i class="fa fa-clock-o"></i> Seb 06, 2019</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="blog__sidebar__item">
						<div class="sidebar__subscribe">
							<div class="sidebar__title">
								<h6>Go mobile</h6>
							</div>
							<form action="#">
								<button type="submit" class="site-btn">App store Banner</button>
								<button type="submit" class="site-btn">App store Banner</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Blog Section End -->

<%@ include file="include/home/footer.jsp"%>