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
	
	
}
