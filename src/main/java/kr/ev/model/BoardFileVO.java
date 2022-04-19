package kr.ev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardFileVO {

	private int seq;
	private int fseq;
	private String originalFileName;
	private String filePath;
	private long fileSize;
}
