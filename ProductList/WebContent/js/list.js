function productDelete(productId) {

	$.ajax({
		type : "post",
		url : "/ProductList/product?cmd=deleteProc",
		data : "productId=" + productId,
		contentType : "application/x-www-form-urlencoded; charset=uft-8",
		dataType : "text"
	}).done(function(result) {
		if (result == "1") {
			alert("상품 삭제 완료");
			var productItem = $("#product-" + productId);
			productItem.remove();
		} else {
			alert("상품 삭제 실패");
		}
	}).fail(function(error) {
		alert("상품 삭제 에러");
	});
}

function orderByCount() {
	
	$.ajax({
		type : "post",
		url : "/ProductList/product?cmd=orderByCount",
		contentType : "application/json; charset=uft-8",
		dataType : "json"
	}).done(function(result) {
		console.log(result);
		alert("판매순 정렬 완료");
		$("#product__list").empty();

		for(var product of result) {
			var string = 
				`<tr id="product-${product.id}">
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.type}</td>
				<td>${product.price}</td>
				<td>${product.count}</td>
				<td><button onclick="productDelete(${product.id})" class="btn btn-outline-danger">삭제</button></td>
				</tr>`;
			
			$("#product__list").append(string);
		}
	}).fail(function(error) {
		alert("판매순 정렬 에러")
	});
}

function orderByPrice() {

	$.ajax({
		type : "post",
		url : "/ProductList/product?cmd=orderByPrice",
		contentType : "application/json; charset=uft-8",
		dataType : "json"
	}).done(function(result) {
		console.log(result);
		alert("가격순 정렬 완료");
		$("#product__list").empty();

		for(var product of result) {
			var string = 
				`<tr id="product-${product.id}">
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.type}</td>
				<td>${product.price}</td>
				<td>${product.count}</td>
				<td><button onclick="productDelete(${product.id})" class="btn btn-outline-danger">삭제</button></td>
				</tr>`;
			
			$("#product__list").append(string);
		}
	}).fail(function(error) {
		alert("가격순 정렬 에러")
	});
}

function orderByBasic() {
	$.ajax({
		type : "post",
		url : "/ProductList/product?cmd=orderByBasic",
		contentType : "application/json; charset=uft-8",
		dataType : "json"
	}).done(function(result) {
		console.log(result);
		$("#product__list").empty();

		for(var product of result) {
			var string = 
				`<tr id="product-${product.id}">
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.type}</td>
				<td>${product.price}</td>
				<td>${product.count}</td>
				<td><button onclick="productDelete(${product.id})" class="btn btn-outline-danger">삭제</button></td>
				</tr>`;
			
			$("#product__list").append(string);
		}
	}).fail(function(error) {
		alert("정렬 에러")
	});
}

