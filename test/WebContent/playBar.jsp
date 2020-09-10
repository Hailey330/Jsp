<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>playbar</title>
<style>
#player-bar {
	position: fixed;
	bottom: 0;
	left: 0;
	right: 0;
	width: 100%;
	background-color: #f2f2f2;
	height: 48px;
	border-top: 1px solid #ccc;
}

#player-container {
	width: 92%;
	max-width: 1240px;
	height: 48px;
	margin: 0 auto;
	display: flex;
}

#player-controller {
	display: flex;
}

#prev-btn {
	background: url("img/control_prev.svg") no-repeat center;
}

#play-pause-btn {
	background: url("img/control_play.svg") no-repeat center;
}

#next-btn {
	background: url("img/control_next.svg") no-repeat center;
}

#shuffle-btn {
	background: url("img/control_shuffle.svg") no-repeat center;
}

#repeat-btn {
	background: url("img/control_repeat.svg") no-repeat center;
}

#mute-volume-btn {
	background: url("img/control_sound.svg") no-repeat center;
	margin: 0 12px;
}

#like-btn {
	background: url("img/control_like.svg") no-repeat center;
	margin-left: 7px;
	width: 15px;
	height: 15px;
}

#playlist-btn {
	background: url("img/control_list.svg") no-repeat center;
	margin: 3px 0 0 7px;
	width: 24px;
	height: 24px;
}

#player-progress {
	display: flex;
	width: 100%;
	max-width: 632px;
	height: 100%;
	text-align: center;
}


#player-progress #player-timepassed {
	color: #f50;
}

#player-progress #player-timepassed, #player-progress #player-duration {
	width: 50px;
	height: 46px;
	padding: 17px 0;
	font-size: 11px;
	font-weight: 300;
}

#player-scrubbar {
	position: relative;
	padding: 10px 0;
	margin: 13px 10px 0 10px;
	width: 100%;
}

#player-scrubbar #scrub-bg {
	position: absolute;
	width: 100%;
	height: 1px;
	background-color: #ccc;
}

#scrub-progress {
	position: absolute;
	height: 1px;
	background-color: #f50;
	transition: all 0.45s linear;
}

.controller-btn {
	margin-left: 12px;
	min-width: 24px;
	width: 24px;
	height: 100%;
	cursor: pointer;
}

.player-track {
	display: flex;
	align-items: center;
}

.player-track .player-uploader-pic {
	box-sizing: border-box;
	min-width: 30px;
	width: 30px;
	height: 30px;
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	margin: 0 7px;
}

.player-track-uploader {
	color: #999;
}

.player-track .player-track-uploader img {
	flex-shrink: 0;
	min-width: 100%;
	max-width: 100%;
}

.player-track .player-track-info {
	min-width: 230px;
	width: 100%;
}

.player-track-uploader, .player-track-name {
	font-weight: 300;
}

.player-track-name {
	color: #333333;
}
a, a:hover {
	text-decoration: none;
	color: #000;
}

p {
	line-height: 10px;
}

img {
	width: 100%;
	height: 100%;
}

div {
	display: block;
}
</style>

</head>

<body>
	<div id="player-bar">
		<div id="player-container">
			<div id="player-controller">
				<div id="prev-btn" class="controller-btn"></div>
				<!-- play-pause-btn 동적으로 바꾸기 -->
				<div id="play-pause-btn" class="controller-btn"></div>
				<div id="next-btn" class="controller-btn"></div>
				<div id="shuffle-btn" class="controller-btn"></div>
				<div id="repeat-btn" class="controller-btn"></div>
			</div>

			<div id="player-progress">
				<!-- time-passed 동적으로 바꾸기 -->
				<div id="player-timepassed">00:00</div>
				<div id="player-scrubbar">
					<div id="scrub-bg"></div>
					<!-- scrub-progress style 동적으로 바꾸기 -->
					<div id="scrub-progress" style="width: 34%;"></div>
					<div id="scrub-handle"></div>
				</div>
				<!-- player-duration 음악 time 동적으로 바꾸기 -->
				<div id="player-duration">00:50</div>
			</div>

			<div class="player-track">
				<!-- mute-volume-btn 동적으로 바꾸기 -->
				<div id="mute-volume-btn" class="controller-btn"></div>
				<!-- player-uploader-pic 동적으로 바꾸기 -->
				<div class="player-uploader-pic">
					<img src="img/userProfile.png">
				</div>
				<div class="player-track-info">
					<p class="player-track-uploader">hongcha</p>					
					<p class="player-track-name">All Eyes on me</p>
				</div>
				<div id="like-btn" class="controller-btn"></div>
				<div id="playlist-btn" class="controller-btn"></div>
			</div>
		</div>
	</div>
</body>
</html>