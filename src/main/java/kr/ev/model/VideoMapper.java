package kr.ev.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface VideoMapper {

	public List<VideoVO> video(int postStart);

	public int boardAmount();
	
	VideoVO Select(int q_num);
	
}
