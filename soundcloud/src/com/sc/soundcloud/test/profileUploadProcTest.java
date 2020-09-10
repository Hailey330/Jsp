package com.sc.soundcloud.test;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sc.soundcloud.action.Action;

public class profileUploadProcTest implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/upload");
		MultipartRequest multi = new MultipartRequest
				(
						request, 
						realPath, 
						1024*1024*10, 
						"UTF-8",
						new DefaultFileRenamePolicy()
				);
		File music = multi.getFile("userFile");
		System.out.println(music);
		
	}
}
