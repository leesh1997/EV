package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class BenjaminVO {

	private int ben_seq;
	private String ben_color;
	private String ben_title;
	private String ben_img;
	private Date ben_date;
	private String m_emil;
	
}
