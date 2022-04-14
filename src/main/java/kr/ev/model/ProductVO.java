package kr.ev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class ProductVO {

	private int p_seq;
	private String p_name;
	private String p_color;
	private String p_price;
	private String p_imgurl;
	private String p_brand;
	private String p_type;
	private String m_email;
	private String p_url;
	
}
