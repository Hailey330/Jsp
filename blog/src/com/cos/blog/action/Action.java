package com.cos.blog.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	
}
