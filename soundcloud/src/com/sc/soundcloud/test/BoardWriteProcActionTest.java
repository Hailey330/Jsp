package com.sc.soundcloud.test;

import java.io.IOException;

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

public class BoardWriteProcActionTest implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// write에서 음악 파일, 이미지 파일, title, content 한번에 보냈을 때 로직
		
		// 0. 인증 확인
		HttpSession session = request.getSession();
//				if(session.getAttribute("principal") == null) {
//					Script.getMessage("잘못된 접근!", response);
//					return;
//				}
		Users principal = (Users) session.getAttribute("principal");

		// 1. write.jsp 에서 넘긴 파일 받기
		String realPath = request.getServletContext().getRealPath("/upload");
		System.out.println("realPath2 : " + realPath);
		String contextPath = request.getServletContext().getContextPath();
		System.out.println("contextPath2 : " + contextPath);

		int id;
		String musicFile = null;
		String fileImage = null;
		int maxSize = 10 * 1024 * 1024;

		try {
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			// request 되는 순간 null로 변함
			String userFile = multi.getFilesystemName("musicFile");
			String userImage = multi.getFilesystemName("musicImage");			
			System.out.println("userFile : " + userFile);
			System.out.println("fileImage : " + userImage);

			id = Integer.parseInt(multi.getParameter("id"));
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");

			musicFile = contextPath + "/upload/" + userFile;
			fileImage = contextPath + "/upload/" +  userImage;
			System.out.println("musicFile : " + musicFile);
			System.out.println("musicImage : " + fileImage);
			
			// 2. DB 에 넣기
			Board board = Board.builder()
					.id(id)
					.userId(principal.getId())
					.title(title)
					.content(content)
					.musicFile(musicFile)
					.fileImage(fileImage)
					.build();

			// 3. BoardRepository 연결해서 update(board) 함수 호출
			BoardRepository boardRepository = BoardRepository.getInstance();
			int result = boardRepository.save(board);

			// 5. 페이지 이동
			if (result == 1) {
				Script.href("/soundcloud/board?cmd=stream", response);
//				Script.href("/soundcloud/board?cmd=detail&id" + id, response);
			} else {
				Script.back("ERROR! 다시 진행해주세요.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
