package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class InteriorVO {

	private int i_seq;
	private String i_ratio;
	private String i_rgb1;
	private String i_rgb2;
	private String i_rgb3;
	private String i_rgb4;
	private String i_rgb5;
	private String i_style;
	private String i_purpose;
	private String i_url;
	private String i_name;
	private String i_hashtag;
	private Date i_date;
	
}
