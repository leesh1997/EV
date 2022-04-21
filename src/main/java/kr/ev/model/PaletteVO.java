package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaletteVO {

	private int pl_seq;
	private String pl_c1;
	private String pl_name1;
	private String pl_c2;
	private String pl_name2;
	private String pl_c3;
	private String pl_name3;
	private String pl_c4;
	private String pl_name4;
	private String pl_c5;
	private String pl_name5;
	private String m_email;
	private Date pl_date;
	
}
