package kr.ev.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class VideoVO {

	private int v_seq;
	private String v_url;
	private String v_title;
	private String v_hashtag;
	private String v_cnt;
	private String v_channel;
	private String v_upload_dt;
	private String m_email;
	
}
