package com.cos.blog.dto;

import java.util.List;

import com.cos.blog.model.Board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DetailResponseDto {
	private BoardResponseDto boardDto; // Board 게시글 한 개
	private List<ReplyResponseDto> replyDtos; // Reply 댓글 여러개
}
