package com.cos.Chapter3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/directURL")
public class DirectURLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DirectURLServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("이름 : " + name + "<br>");
		out.println("나이 : " + age + "<br>");
	}

}
