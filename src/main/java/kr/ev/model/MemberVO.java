package kr.ev.model;

import java.sql.Date;

public class MemberVO {
	
	private String m_email;
	private String m_pw;
	private String m_name;
	private String m_nick;
	private Date m_birthdate;
	private String m_gender;
	private String m_addr;
	private String m_ftype;
	private int m_fsize;
	private Date m_joindate;
	private String m_kind;
	
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_nick() {
		return m_nick;
	}
	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}
	public Date getM_birthdate() {
		return m_birthdate;
	}
	public void setM_birthdate(Date m_birthdate) {
		this.m_birthdate = m_birthdate;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_ftype() {
		return m_ftype;
	}
	public void setM_ftype(String m_ftype) {
		this.m_ftype = m_ftype;
	}
	public int getM_fsize() {
		return m_fsize;
	}
	public void setM_fsize(int m_fsize) {
		this.m_fsize = m_fsize;
	}
	public Date getM_joindate() {
		return m_joindate;
	}
	public void setM_joindate(Date m_joindate) {
		this.m_joindate = m_joindate;
	}
	public String getM_kind() {
		return m_kind;
	}
	public void setM_kind(String m_kind) {
		this.m_kind = m_kind;
	}
	
	
	
	

}
