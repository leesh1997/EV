package kr.ev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ViewVO {

	private int cho_seq;
	private String cho_cl1;
	private String cho_cl2;
	private String cho_cl3;
	private String cho_cl4;
	private String cho_cl5;
	private String cho_img;
	private String m_email;
	
}
