
var isCheckedUsername = false;

function usernameValidate() {
	if (isCheckedUsername == false) {
		alert('ID 중복체크를 해주세요.');
	} 
	return isCheckedUsername;		
}

function usernameCheck() {
	var checkname = $("#username").val();
	console.log(checkname);

	$.ajax({
		type : 'get',
		url : `/soundcloud/users?cmd=usernameCheck&username=${checkname}`
	}).done(function(result) {
		console.log(result);
		if (result == 1) {
			alert('사용중인 아이디입니다.');
		} else if (result == 0) {
			alert('사용하실 수 있는 아이디입니다.');
			isCheckedUsername = true;
		} else {
			console.log('develop : 서버 오류');
		}
	}).fail(function(error) {
		console.log(error);
	});
}