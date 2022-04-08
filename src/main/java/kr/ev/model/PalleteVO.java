package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PalleteVO {

	private int pl_seq;
	private String pl_c1;
	private String pl_c2;
	private String pl_c3;
	private String pl_c4;
	private String pl_c5;
	private String m_email;
	private Date pl_date;
	
}
