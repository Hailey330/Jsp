package com.cos.product.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.product.model.Product;
import com.cos.product.repository.ProductRepository;

public class ProductListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. DB 연결해서 목록 다 불러오기
		ProductRepository productRepository = ProductRepository.getInstance();
		List<Product> products = productRepository.findAll();
		// 2. request 에 담아서 
		request.setAttribute("products", products);
		// 3. main.jsp 로 이동하기 
		RequestDispatcher dis = request.getRequestDispatcher("list.jsp");
		dis.forward(request, response);
	}
}
