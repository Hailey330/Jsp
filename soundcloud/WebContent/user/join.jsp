<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../include/member/nav.jsp"%>


<div class="limiter">
	<div class="container-login100" style="background-image: url('/soundcloud/login/images/main.jpeg');">
		<div class="wrap-login100">
		
			<form action="/soundcloud/users?cmd=joinProc" method="POST" class="login100-form validate-form" onsubmit="return usernameValidate();">
				
				<span class="login100-form-title p-b-50 p-t-27"> Create account </span>
				
				<!-- name input -->
				<div class="wrap-input100 validate-input" data-validate="Enter your name">
					<button type="button" class="username-btn float-right" onclick="usernameCheck()">CHECK ID</button>
					<input id="username" class="input100" type="text" name="username" placeholder="Your ID"> 
					<span class="focus-input100" data-placeholder="&#xf207;"></span>
				</div>
				
				<!-- email input -->
				<div class="wrap-input100 validate-input" data-validate="Enter your email">
					<input id="email" class="input100" type="text" name="email" placeholder="Your email address"> 
					<span class="focus-input100" data-placeholder="&#xf15a;"></span>
				</div>

				<!-- password input -->
				<div class="wrap-input100 validate-input" data-validate="Enter your password">
					<input id="password" class="input100" type="password" name="password" placeholder="Your Password"> 
					<span class="focus-input100" data-placeholder="&#xf191;"></span>
				</div>

				<!-- continue button -->
				<div class="container-login100-form-btn">
					<button type="submit" class="login100-form-btn">Continue</button>
				</div>

				<div class="text-center p-t-15">
					<div class="txt1">
						<span>or</span>
					</div>
				</div>
				
				<!-- kakao login button -->
				<div class="container-kakao-form-btn p-t-15">
					<button class="kakao-form-btn">Continue with Kakao</button>
				</div>
				
				<!-- login button -->
				<div class="text-center p-t-40">
					<a class="txt2" href="/soundcloud/users?cmd=login"> I already have account </a>
				</div>
			</form>
		</div>
	</div>
</div>

<script src="/soundcloud/js/join.js"></script>

<%@ include file="../include/member/footer.jsp"%>