package com.sc.soundcloud.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board {
	private int id;
	private int userId;
	private String userName;
	private String title;
	private String content;
	private String musicFile;
	private String fileImage;
	private int likeCount;
	private int playCount;
	private Timestamp createDate;
}
