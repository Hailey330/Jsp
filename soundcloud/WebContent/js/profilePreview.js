$("#userProfile").on("change", function(e) { // 앨범 커버 이미지 
	console.log(e);
	var f = e.target.files[0];
	if (!f.type.match("image*")) {
		alert("이미지만 첨부할 수 있습니다.");
		$("#userProfile").val('');
		return;
	}
	
	var reader = new FileReader();
	
	reader.onload = function(e) {
		$("#img__wrap").attr("src", e.target.result);
	};
	
	reader.readAsDataURL(f); // 비동기
	
	
})