package com.bitc.contents.movies.model;

import java.util.Date;

import lombok.Data;

@Data
public class MovieRatingVO {
	private int mr_num;
	private String email;
	private int mv_num;
	private String mr_comment;
	private int mr_stars;
}
