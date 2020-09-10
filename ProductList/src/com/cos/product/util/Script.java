package com.cos.product.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {
	
	public static void outJson(String msg, HttpServletResponse response) { 
		try {
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("application/json;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.print(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void outText(String msg, HttpServletResponse response) { 
		try {
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.print(msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
