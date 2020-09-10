package com.sc.soundcloud.action.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sc.soundcloud.action.Action;
import com.sc.soundcloud.model.Board;
import com.sc.soundcloud.model.Users;
import com.sc.soundcloud.repository.BoardRepository;
import com.sc.soundcloud.repository.UsersRepository;
import com.sc.soundcloud.util.Script;

public class UsersProfileUploadProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// user - profileUpload.jsp 에서 넘긴 파일 받기
		String realPath = request.getServletContext().getRealPath("/upload");
		System.out.println("profileUpload realPath : " + realPath);
		String contextPath = request.getServletContext().getContextPath();
		System.out.println("profileUpload realPath : " + realPath);

		int userId;
		String userProfile = null;
		int maxSize = 10 * 1024 * 1024;

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());

			// 1. updateFile.jsp 에서 넘긴 boardId 값 받기
			String userImage = multi.getFilesystemName("userProfile");
			System.out.println("update userImage : " + userImage);

			userId = Integer.parseInt(multi.getParameter("userId"));

			userProfile = contextPath + "/upload/" + userImage;
			System.out.println("update fileImage : " + userProfile);

			UsersRepository usersRepository = UsersRepository.getInstance();
			int result = usersRepository.updateProfile(userId, userProfile);

			// 5. 페이지 이동
			if (result == 1) {
				HttpSession session = request.getSession();
				Users principal = usersRepository.findById(userId);
				session.setAttribute("principal", principal);
				
				Script.href("프로필 사진 업데이트 완료", "/soundcloud/users?cmd=profileUpload", response);

			} else {
				Script.back("ERROR! 다시 진행해주세요.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
