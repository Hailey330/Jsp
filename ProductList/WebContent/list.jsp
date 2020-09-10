<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- DB + Ajax 연습 --> 

<!DOCTYPE html>
<html>
<head>
<title>Product List</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<br /> <br />
		<h2 class="m-3" align="center">상품 리스트</h2>

		<div class="btn-group m-2" style="float: right;">
			<button onclick="orderByBasic()" class="btn btn-light">처음으로</button>

			<div class="btn-group">
				<button class="btn btn-light dropdown-toggle" data-toggle="dropdown">정렬하기</button>
				<div class="dropdown-menu">
					<a onclick="orderByPrice()" class="dropdown-item">가격순</a> <a onclick="orderByCount()" class="dropdown-item">판매순</a>
				</div>
			</div>

		</div>

		<br /> <br />

		<div class="table">
			<table class="table table-bordered">
				<thead class="thead-dark">
					<tr align="center">
						<th>번호</th>
						<th>이름</th>
						<th>종류</th>
						<th>가격</th>
						<th>판매수</th>
						<th>상품 삭제하기</th>
					</tr>
				</thead>
				<tbody align="center" id="product__list">
					<c:forEach var="product" items="${products}">
						<tr id="product-${product.id}">
							<td>${product.id}</td>
							<td>${product.name}</td>
							<td>${product.type}</td>
							<td>${product.price}</td>
							<td>${product.count}</td>
							<td><button onclick="productDelete(${product.id})" class="btn btn-outline-danger">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>

<script src="/ProductList/js/list.js"></script>

</html>