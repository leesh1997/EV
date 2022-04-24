package kr.ev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchPageVO{
	private int startNum;
	private String searchinfo;
	private String c_rgb;
	private int c_seq;
	
	
	
}
