package kr.ev.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@AllArgsConstructor

public class CommentVO {

	private int cmt_seq;
	private int b_seq;
	private String cmt_content;
	private Date cmt_date;
	private String m_nick;
	
}
