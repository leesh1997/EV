package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class MemberVO {
	
	
	private String m_email;
	private String m_pw;
	private String m_name;
	private String m_nick;
	private String m_birthdate;
	private String m_gender;
	private String m_addr;
	private String m_ftype;
	private String m_fsize;
	private String m_joindate;
	private String m_kind;
	
	
	
	

}
