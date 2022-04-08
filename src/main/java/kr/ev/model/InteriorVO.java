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
	private String i_rgb;
	private String i_style;
	private String i_purpose;
	private String i_url;
	private String i_name;
	private String i_hashtag;
	private Date i_date;
	
}
