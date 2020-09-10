package com.cos.product.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.product.model.Product;
import com.cos.product.repository.ProductRepository;
import com.cos.product.util.Script;
import com.google.gson.Gson;

public class ProductOrderByPriceAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Gson gson = new Gson();
		
		ProductRepository productRepository = ProductRepository.getInstance();
		List<Product> products = productRepository.orderByPrice();
		String productsJson = gson.toJson(products);
		Script.outJson(productsJson, response);
		System.out.println("ProductOrderByPriceAction : productsJson : " + productsJson);
	}
}
