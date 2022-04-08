package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor 
@NoArgsConstructor

public class MagazineVO {

	private int mz_seq;
	private String mz_title;
	private String mz_img;
	private String mz_site;
	private String mz_url;
	private Date mz_date;
	private String m_email;
	
}
