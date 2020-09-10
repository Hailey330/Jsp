function getAgo() {
	timestamp = new Date().getTime();

	var num = Number($("#count").val());

	for (var i = 1; i <= num; i++) {

		let time1 = Number($("#" + i + "_input").val());
		console.log(time1);

		timeInterval = timestamp - time1;

		if (timeInterval < 3600000) {
			var string = parseInt(timeInterval / 60000) + "분 전";
			$("#" + i + "_td").text(string);
		} else if (timeInterval < 86400000) {
			var string = parseInt(timeInterval / 3600000) + "시간 전";
			$("#" + i + "_td").text(string);
		} else if (timeInterval < 2678400000) {
			var string = parseInt(timeInterval / 86400000) + "일 전";
			$("#" + i + "_td").text(string);
		} else if (timeInterval < 31536000000) {
			var string = parseInt(timeInterval / 2678400000) + "달 전";
			$("#" + i + "_td").text(string);
		} else {
			var string = parseInt(timeInterval / 31536000000) + "년 전";
			$("#" + i + "_td").text(string);
		}
	}
}
getAgo();
setInterval(getAgo, 60000);