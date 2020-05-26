package com.cos.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/fruit")
public class fruit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fruit() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("request Get");
		PrintWriter out = response.getWriter();
		String title = "My Favorite Fruits";
		String subTitle = "minkky";
		String fruit1 = "strawberry";
		String fruit2 = "banana";
		String fruit3 = "kiwi";
		String fruit4 = "apple";
		String fruit5 = "pineapple";
		String fruit6 = "mango";
		String fruit7 = "watermelon";
		String fruit8 = "grape";
		String fruit9 = "passion fruit";
		String fruit10 = "orange";

		out.println("<html>");
		out.println("<body>");
		out.println("<h2>");
		out.println(title);
		out.println("<h3>");
		out.println(subTitle);
		out.println("</h2>");
		out.println("</h3>");
		out.println("<table border = '2' bordercolor = 'purple'>");
		out.println("<tr>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit1);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit2);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit3);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit4);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit5);
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit6);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit7);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit8);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit9);
		out.println("</td>");
		out.println("<td width = '100' height = '100'>");
		out.println(fruit10);
		out.println("</td>");
		out.println("</tr>");
		
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
