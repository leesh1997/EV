package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class WishlistVO {

	private int w_seq;
	private char w_type;
	private int i_seq;
	private int c_seq;
	private int p_seq;
	private Date w_date;
	private String m_email;
	
}
